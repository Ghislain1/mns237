package org.mns237.entity;

import javax.persistence.*;

@Entity
@Table(name ="role")
public class Role{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "role_id")
	private int id;
	@Column(name = "role")
	private String role;

}