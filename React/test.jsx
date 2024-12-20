function MyButton() {
    function handleClick() {
      alert('You clicked me!');
    }
  
    return (
      <button onClick={handleClick}>
        Click me
      </button>
    );
  }


  //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   // 
import React from 'react';

// HelloReact Component
const HelloReact = () => {
  // TODO: Create a greeting message
  // Example: Return a div with "Hello, React!"
  return <div><p>Hello, React!</p></div>;
};

export default HelloReact;



import React from 'react';

// ProfileCard Component
const ProfileCard = ({ name, age, location }) => {
  // TODO: Replace the placeholders with props
  return (
    <div className="text-center bg-white p-6 rounded-lg shadow-md border border-gray-300">
      <h1 className="text-xl font-bold text-gray-800">Thomas</h1>
      <p className="text-gray-600">28 ans</p>
      <p className="text-gray-600">Gefor</p>
    </div>
  );
};

export default ProfileCard;
