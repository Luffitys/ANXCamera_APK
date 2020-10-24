.class public Lcom/xiaomi/mi_connect_sdk/api/MiConnect;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MiConnect"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delApp(Lcom/xiaomi/mi_connect_sdk/api/MiApp;I)V
    .locals 0

    check-cast p0, Lcom/xiaomi/mi_connect_sdk/api/InnerMiApp;

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/InnerMiApp;->destroy(I)V

    return-void
.end method

.method public static newApp(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;I)Lcom/xiaomi/mi_connect_sdk/api/MiApp;
    .locals 1

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;-><init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;I)V

    return-object v0
.end method
