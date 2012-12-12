from django import forms

class RegistrationForm(forms.Form):
    username = forms.CharField(max_length=15)
    password1 = forms.CharField(widget=forms.PasswordInput(render_value=False))
    firstName = forms.CharField(max_length=50)    
    lastName = forms.CharField(max_length=50)
    street = forms.CharField(max_length=50)
    city = forms.CharField(max_length=50)
    state = forms.CharField(max_length=15)
    zipcode = forms.CharField(max_length=9)

class LoginForm(forms.Form):
    username = forms.CharField(max_length=50)
    password = forms.CharField(widget=forms.PasswordInput(render_value=False))
