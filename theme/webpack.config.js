const webpack = require("webpack");
const path = require("path");

const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const OptimizeCSSAssetsPlugin = require("optimize-css-assets-webpack-plugin");
const RemovePlugin = require('remove-files-webpack-plugin');

let compileSassJS = {
    //mode: process.env.NODE_ENV === 'production' ? 'production' : 'development',
    mode: 'production',
    entry: './src/index.js',
    output: {
        path: path.resolve(__dirname, "../src/main/webapp/resources/js"),
        filename: 'bundle.js',
    },
    module: {
        rules: [
            {
                test: /\.s[ac]ss$/i,
                use: [
                    // Creates `style` nodes from JS strings
                    'style-loader',
                    // Translates CSS into CommonJS
                    'css-loader',
                    // Compiles Sass to CSS
                    'sass-loader',
                ],
            },
        ],
    },
};

let compileJs = {
    mode : "production",
    entry: "./src/js/main.js", // entry point
    output: { // output property
        path: path.resolve(__dirname, "../src/main/webapp/resources/js"),
        //path: path.resolve(__dirname, "./public/js"),
        filename: "bundle.js"
    },
    module: {
        rules: [{
            test: /\.js$/,
            exclude: /node_modules/,
            loader: "babel-loader"
        }]
    }
};

let compileSass = {
    mode : "production",
    entry: './src/scss/main.scss',
    output: {
        path: path.resolve(__dirname, '../src/main/webapp/resources/css')
    },
    module: {
        rules: [
            // Extracts the compiled CSS from the SASS files defined in the entry
            {
                test: /\.scss$/,
                use: [
                    {
                        loader: MiniCssExtractPlugin.loader
                    },
                    {
                        // Interprets CSS
                        loader: "css-loader",
                        options: {
                            importLoaders: 2
                        }
                    },
                    {
                        loader: 'sass-loader'
                    }
                ]
            }
        ],
    },
    plugins: [
        // Where the compiled SASS is saved to
        new MiniCssExtractPlugin({
            //filename: 'style.min.[id].[hash].css',
            filename: 'style.min.css',
            allChunks: true,
        }),
        new RemovePlugin({
            after: {
                root: '../src/main/webapp/resources/css/',
                include: [
                    'main.js'
                ],
                trash: true
            }
        })
    ],
    optimization: {
        minimizer: [
            new OptimizeCSSAssetsPlugin({
                cssProcessorOptions: {
                    safe: true
                }
            })
        ]
    }
};

let compileTs = {
    entry: [
        "./src/ts/main.ts",
        "./src/ts/two.ts"
    ],
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                loader: 'babel-loader',
                exclude: /node_modules/,
            },
        ],
    },
    resolve: {
        extensions: [ '.tsx', '.ts', '.js' ],
    },
    output: {
        filename: 'bundle.ts.js',
        path: path.resolve(__dirname, '../src/main/webapp/resources/js/'),

    },
};

module.exports = [compileJs,compileSass,compileTs];