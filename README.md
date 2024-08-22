You are given an encoded string representing a key-value pair, where the key is a name, and the value is an instance of a data type Info containing two fields: role (a string representing the role of the person in the company) and employerId (an integer representing the employer ID). Additionally, you are provided with an encoded list of such key-value pairs.

Your task is to implement a Haskell function that:

Decodes the input string to extract the key and value.
  1.Decodes the list of key-value pairs.
  2.Checks if the key from the input string already exists in the list:
  3.If the key exists, the function should update the role field by appending the new role to the existing role(s), separated by a 
     comma, ensuring the employerId remains the same.
  4.If the key does not exist, the function should add the new key-value pair to the list.
  5.The function should then re-encode the updated list back to a string and return it.
  
Sample Data

Encoded Input
Single Key-Value Pair: ("ram", Info "Backend developer" 12)
List of Key-Value Pairs: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14)]

Expected Outputs
Input: ("ram", Info "Backend developer" 12)
List: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14)]
Output: [("ram", Info "Intern, Backend developer" 12), ("sam", Info "Frontend developer" 14)]

Input: ("john", Info "Data Scientist" 18)
List: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14)]
Output: [("ram", Info "Intern" 12), ("sam", Info "Frontend developer" 14), ("john", Info "Data Scientist" 18)]
