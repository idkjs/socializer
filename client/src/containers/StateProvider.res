

// let stateProvider = ({ initialToken, initialUserId, socket, children }) => {
//   let client = ApolloClient.useApolloClient();
//   let (token, setToken) = React.useState(initialToken || Cookies.get("token"));
//   let (userId, setUserId) = React.useState(initialUserId || Cookies.get("userId"));
//   let (chatState, setChatState) = React.useState("default");

  // If the token changed (i.e. the user logged in
  // or out), clear the Apollo store and refresh the
  // websocket connection.
  // React.useEffect(() => {
  //   if (!token) client.clearStore();
  //   if (socket) refreshSocket(socket);
  //   None
  // }, [client, socket, token]);

  // let setAuth = (data) => {
  //   if (data) {
  //     let { id, token } = data;
  //     Cookies.set("token", token);
  //     Cookies.set("userId", id);
  //     setToken(token);
  //     setUserId(id);
  //   } else {
  //     Cookies.remove("token");
  //     Cookies.remove("userId");
  //     setToken(null);
  //     setUserId(null);
  //   }
  // };


    // <AuthContext.Provider value={{ token, userId, setAuth }}>
    //   <ChatContext.Provider value={{ chatState, setChatState }}>
    //     {children}
    //   </ChatContext.Provider>
    // </AuthContext.Provider>

//   React.null
// };
