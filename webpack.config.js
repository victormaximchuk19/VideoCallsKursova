var path = require('path');

module.exports = {
    entry: "./frontend/VideoComponent.jsx",
    output: {
        path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
        filename: "bundle.js"
    },
    module: {
        rules: [
            {
                test: [/\.jsx?$/],
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    query: {
                        presets: ['@babel/env', '@babel/react'],
                        plugins: ['@babel/plugin-proposal-class-properties']
                    }
                },
            }
        ]
    },
    devtool: 'eval-source-map',
    resolve: {
        extensions: ['.js', '.jsx', '*']
    }
};