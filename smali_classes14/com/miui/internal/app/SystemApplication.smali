.class public Lcom/miui/internal/app/SystemApplication;
.super Landroid/app/Application;
.source "SystemApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    return-void
.end method
