terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "random" {
  # Configuration options
}
resource "local_file" "useridentity" {
    content  = var.useridentity
    filename = "${path.module}/data/user.txt"
    file_permission = "0770"
}

resource "local_file" "userlist" {
    
    content = "${var.userCiv} ${var.useridentity} a ${var.listeExp[0]} en ${var.listeDom[0]}" 
    filename = "${path.module}/data/userlist.txt"
    file_permission = "0770"
}

resource "local_file" "usermap" {
    
    content = "${var.userCiv} ${var.useridentity} ${var.mapExpDom["exp1"]}" 
    filename = "${path.module}/data/usermap.txt"
    file_permission = "0770"
}

resource "local_file" "userobj" {
    
    content = "${var.objUser1.civ} ${var.objUser1.nom} ${var.objUser1.prenom} a ${var.objUser1.exps[0]} en ${var.objUser1.doms[0]}" 
    filename = "${path.module}/data/userobj.txt"
    file_permission = "0770"
}

resource "local_file" "usertuple" {
    
    content = "${var.objUser1.civ} ${var.useridentity} a ${var.tuple1[0]} en ${var.tuple1[1]}" 
    filename = "${path.module}/data/usertuple.txt"
    file_permission = "0770"
}

resource "local_file" "profile_as_list" {
    
    content = "${var.profile_as_list[0]} ${var.profile_as_list[1]} ${var.profile_as_list[2]} ${var.profile_as_list[3]} ${var.profile_as_list[4]}" 
    filename = "${path.module}/data/profile-as-list.txt"
    file_permission = "0770"
}

resource "local_file" "profile_input" {
    
    content = "${var.profile_input[0]}"
    filename = "${path.module}/data/profile-input.txt"
    file_permission = "0770"
}

resource "local_file" "var_fichier" {
    
    content = "${var.var_fichier[0]} ${var.var_fichier[1]} ${var.var_fichier[2]} ${var.var_fichier[3]}"
    filename = "${path.module}/data/profile-fichier.txt"
    file_permission = "0770"
}

resource "random_string" "randomName" {
  length           = 8
  special          = false
  numeric          = false
  upper            = false
}

resource "local_file" "profile-random" {
    
    content = "${random_string.randomName.result}"
    filename = "${path.module}/data/profile-random.txt"
    file_permission = "0770"
    
    depends_on = [
      random_string.randomName
    ]
}