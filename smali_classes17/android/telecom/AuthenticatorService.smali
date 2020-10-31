.class public Landroid/telecom/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/AuthenticatorService$Authenticator;
    }
.end annotation


# static fields
.field private static mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    sget-object v0, Landroid/telecom/AuthenticatorService;->mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;

    invoke-virtual {v0}, Landroid/telecom/AuthenticatorService$Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    new-instance v0, Landroid/telecom/AuthenticatorService$Authenticator;

    invoke-direct {v0, p0, p0}, Landroid/telecom/AuthenticatorService$Authenticator;-><init>(Landroid/telecom/AuthenticatorService;Landroid/content/Context;)V

    sput-object v0, Landroid/telecom/AuthenticatorService;->mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;

    return-void
.end method
