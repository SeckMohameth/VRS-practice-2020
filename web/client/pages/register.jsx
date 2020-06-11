import {useState} from 'react';
import Layout from '../components/Layout';
import axios from 'axios';
import { showSuccessMessage, showErrorMessage } from '../helpers/alerts';
import { API } from '../config';


const Register = () =>  {

  //state
  const [state, setState] = useState({
    name: '',
    username: '',
    email: '',
    password: '',
    birthday: '',
    error: '',
    success: '',
    buttonText: 'Register'

  })

  //destructuring
  const {name, username, email, password, birthday, error, success, buttonText} = state;

  //handling the state of the fields
  const handleChange = name => e => {
    setState({...state, [name]: e.target.value, error: '', success: '', buttonText: 'Register' })
  };

  const handleSubmit = async e => {
    e.preventDefault();
    setState({ ...state, button: 'Registering' });

    try {
      const response = await axios
      .post(`${API}/register`, {
        name,
        username,
        email,
        password,
        birthday
    })
    setState({
      ...state,
      name: '',
      username: '',
      email: '',
      password: '',
      birthday: '',
      buttonText: 'Submitted',
      success: response.data.message
    }); 
    } catch (error) {
        setState({...state, buttonText: 'Resgister', error: error.response.data.error})
    }
  }


  //max date for date of birth
  let today = new Date();
  let dd = String(today.getDate()).padStart(2, '0');
  let mm = String(today.getMonth() + 1).padStart(2, '0');
  let yyyy = today.getFullYear();
  //must be 13 or over to use VRS. Will accomidate for younger audience later
  let age = 13;

  today = yyyy + '-' + mm + '-' + dd;


  //Registration form
  const registerForm = () => (
    <form onSubmit={handleSubmit}>
      <div className="form-group">
        <input 
        value={name}
          onChange={handleChange('name')} 
          type="text" 
          className="form-control" 
          placeholder="Enter your full name"
          required
           />
          
       </div>

       <div className="form-group">
        <input 
        value={username}
          onChange={handleChange('username')} 
          type="text" 
          className="form-control" 
          placeholder="Enter a username"
          required
           />
       </div>

       <div className="form-group">
        <input 
        value={email}
          onChange={handleChange('email')} 
          type="email" 
          className="form-control" 
          placeholder="Enter a email"
          required
           />
       </div>

       <div className="form-group">
        <input 
        value={password}
          onChange={handleChange('password')} 
          type="password" 
          className="form-control" 
          placeholder="Enter a password"
          required
           />
       </div>

       <div className="form-group">
       <p>Enter birthday</p>
       <input 
       value={birthday}
       onChange={handleChange('birthday')}
        type="date" 
        className="form-control" 
        max={today}
        required
       />
       </div>

       <div className="form-group">
        <button className="btn btn-outline-danger">{buttonText}</button>
       </div>

       <div className="form-group">
       <p>By registering you agree to the <a href="https://app.termly.io/document/privacy-policy/fd53dff2-5285-4e22-9780-d95641e06eb1">privacy policy </a>and <a href="https://app.termly.io/document/terms-of-use-for-website/b11e0f85-8061-40de-aae0-68deb3b57c09">terms of service</a></p>
       </div>
    </form>
  )

  return (
    <Layout> 
      <div className="col-md-6 offset-md-3"> 
        <h1>Register</h1>
        <br />
        {success && showSuccessMessage(success)}
        {error && showErrorMessage(error)}
        {registerForm()}
        <hr />
      </div>
    </Layout>
  );
}
    
  export default Register
  