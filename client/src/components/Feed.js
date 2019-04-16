import React from "react";
import { FeedItem, NewItem, Subscriber } from "components";

const Feed = ({ feedType, items, createParams, subscribeToNew }) => {
  return (
    <Subscriber subscribeToNew={subscribeToNew}>
      <NewItem feedType={feedType} params={createParams} />
      {items.map((item) => (
        <FeedItem key={item.id} item={item} feedType={feedType} />
      ))}
    </Subscriber>
  );
};

export default Feed;