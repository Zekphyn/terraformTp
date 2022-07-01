variable "useridentity" {
  type    = string
  default = "Julien Vanhecke"
}

variable "userCiv" {
  type    = string
  default = "M"
}

variable "listeExp" {
    type = list(string)
    default = ["exp1", "exp2","exp3"]
}

variable "listeDom" {
    type = list(string)
    default = ["dom1", "dom2","dom3"]
}

variable mapExpDom {
    type = map
    default = {
        "exp1" = "a exp1 en dom1"
        "exp2" = "a exp2 en dom3"
    }
}

variable objUser1 {
    type = object({
        nom = string
        prenom = string
        civ = string
        exps = list(string)
        doms = list(string)
    })
    default = {
        nom = "Vanhecke"
        prenom = "Julien"
        civ = "M"
        exps = ["exp1","exp2"]
        doms = ["dom1","dom2"]
    }
}

variable tuple1 {
    type = tuple([string,string])
    default = ["exp3", "dom1"]
}  

variable "profile_as_list"{
    description = "Profil d'un utilisateur sous forme de liste"
    type = list(string)
    default = ["Mr", "Julien", "VANHECKE", 1, "Dev"]
}

variable "profile_input" {
    type = tuple([string, string])
    default = ["j","v"]

}
variable "var_fichier" {
    type = tuple([string,string,number,string])
}