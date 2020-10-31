.class public Lcom/milink/api/v1/McsOpenMiracastListener;
.super Lcom/milink/api/v1/aidl/IMcsOpenMiracastListener$Stub;
.source "McsOpenMiracastListener.java"


# instance fields
.field private mOpenMiracastListener:Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/milink/api/v1/aidl/IMcsOpenMiracastListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public openFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsOpenMiracastListener;->mOpenMiracastListener:Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;->openFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public openSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsOpenMiracastListener;->mOpenMiracastListener:Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;->openSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setOpenMiracastListener(Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/McsOpenMiracastListener;->mOpenMiracastListener:Lcom/milink/api/v1/MiLinkClientOpenMiracastListener;

    return-void
.end method
