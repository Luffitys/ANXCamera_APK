.class public abstract Lmiui/upnp/manager/ctrlpoint/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"


# instance fields
.field protected service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method public constructor <init>(Lmiui/upnp/typedef/device/Service;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/upnp/manager/ctrlpoint/AbstractService;->service:Lmiui/upnp/typedef/device/Service;

    return-void
.end method
