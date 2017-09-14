import React from 'react';

const GiphysIndexItem = (props) => {
  const gif = props.gif;
  return (
    <li className='giphy-li'>
      <img src={gif.images.fixed_height.url} />
    </li>
  );
}

export default GiphysIndexItem;
