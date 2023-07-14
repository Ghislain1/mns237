package org.mns237.service;

import org.mns237.dao.AppUserRepository;
import org.mns237.entity.AppUser;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class AppUserService implements UserDetailsService {
    private final String USER_NOT_FOUND = "User with email %s does not exist!!";
    private final AppUserRepository appUserRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        
        return appUserRepository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException(String.format(USER_NOT_FOUND, email)));
    }

    public String signUpUser(AppUser appUser){
        // checking if user exist
        boolean userExist = appUserRepository.findByEmail(appUser.getEmail()).isPresent();
        if(userExist){
            throw new IllegalStateException(" Email already taken" + appUser.getEmail());
        }
        String encodPassword = bCryptPasswordEncoder.encode(appUser.getPassword());
        appUser.setPassword(encodPassword);
        appUserRepository.save(appUser);

        return "welcome user "+ appUser.getFirstName() + " " + appUser.getLastName();
    }
    
}
