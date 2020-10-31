.class public Landroid/app/PackageDeleteObserver;
.super Ljava/lang/Object;
.source "PackageDeleteObserver.java"


# instance fields
.field private final mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/PackageDeleteObserver$1;

    invoke-direct {v0, p0}, Landroid/app/PackageDeleteObserver$1;-><init>(Landroid/app/PackageDeleteObserver;)V

    iput-object v0, p0, Landroid/app/PackageDeleteObserver;->mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/content/pm/IPackageDeleteObserver2;
    .registers 2

    iget-object v0, p0, Landroid/app/PackageDeleteObserver;->mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    return-object v0
.end method

.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
