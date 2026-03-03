# Cloudflare Deployment Project  
Deploying Next.js Frontend on Cloudflare Pages and Backend on Cloudflare Workers using Terraform.

---

##  Project Overview

This project demonstrates Infrastructure as Code (IaC) using **Terraform** to deploy:

-  Frontend → Cloudflare Pages (Next.js)
-  Backend → Cloudflare Workers (API)
-  Fully automated provisioning via Terraform
---

# Project Goal

The goal of this project was to deploy:

A Frontend application using Next.js

A Backend API

Using Cloudflare infrastructure

Fully managed via Terraform (Infrastructure as Code)

So instead of manually creating resources from dashboard, everything is automated.

## Overall Architecture

The architecture is divided into two layers:

1️⃣ Frontend Layer – Cloudflare Pages

Hosts the Next.js frontend

Serves static and optimized web assets

Automatically deploys from GitHub

2️⃣ Backend Layer – Cloudflare Workers

Serverless compute layer

Handles API requests

Runs globally on Cloudflare edge network

## How It Works (Flow)

When a user visits the website:

The browser loads the frontend from Cloudflare Pages

If the frontend needs data, it calls the backend API

The request goes to Cloudflare Worker

The Worker processes the request

The Worker returns a JSON response

The frontend displays the result

Everything runs at the edge, meaning it is globally distributed and very fast.

## ☁️ Why Cloudflare?

Cloudflare provides:

Edge network (low latency worldwide)

Serverless Workers

Static hosting via Pages

Built-in security

Global CDN

No server management

So we do not need:

EC2

Load balancers

Nginx

Manual scaling

Everything is managed by Cloudflare.

## Why Separate Frontend and Backend?

This follows modern cloud architecture principles:

Frontend	Backend
UI Layer	API Layer
Static + SSR	Compute
Pages	Workers

Benefits:

Independent scaling

Clean separation of concerns

Better security

Easier maintenance

🛠️ How I Built It (Step-by-Step Theory)
Step 1 — Created Frontend (Next.js)

Built a Next.js app

Configured it for production build

Pushed code to GitHub

Then:

Connected GitHub to Cloudflare Pages

Cloudflare automatically builds and deploys on every push

Step 2 — Created Backend (Cloudflare Worker)

Instead of using traditional backend servers:

I created a serverless Worker

It listens for HTTP requests

It returns JSON responses

Workers are event-driven and extremely lightweight.

Step 3 — Automated Everything with Terraform

Instead of manually clicking in the dashboard:

I used Terraform to:

Create Worker

Upload Worker code

Create Pages project

Connect GitHub repository

Terraform allows:

Version-controlled infrastructure

Reproducible deployments

One-command setup

Easy destroy and recreate

## Deployment Process

When running:

terraform apply

Terraform:

Authenticates using Cloudflare API token

Creates backend Worker

Uploads backend code

Creates Pages project

Links GitHub repository

Infrastructure becomes live automatically.

## What Makes This Scalable?

Because this project uses:

Edge Compute (Workers)

Runs close to users globally

No cold servers

Auto-scaling

CDN Hosting (Pages)

Static assets cached worldwide

Instant content delivery

This architecture is:

Highly scalable

Cost efficient

Modern cloud-native

## Security Benefits

Cloudflare automatically provides:

DDoS protection

SSL certificates

Edge security

Network firewall

No additional configuration required.

## Infrastructure as Code (Important Concept)

Instead of manually creating:

Workers

Pages

Routes

Deployments

Everything is described in Terraform files.

Advantages:

Can recreate entire infra anytime

Can share with team

Can use CI/CD

No manual mistakes

Easy environment management
