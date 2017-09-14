import React from 'react';

import GiphysIndexItem from './giphys_index_item';

const GiphysIndex = (props) => {
  const giphys = props.giphys
  return (
    <ul>
      {
        giphys.map((gif)=><GiphysIndexItem gif={gif} key={gif.id}/>)
      }
    </ul>
  );
}

export default GiphysIndex;
