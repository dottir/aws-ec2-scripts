npx create-react-app amplify-app
cd amplify-app
npm install aws-amplify @aws-amplify/ui-react
amplify init
amplify add auth
amplify push
#launch the app
npm start
#delete feature
amplify remove auth
#delete project
amplify delete

