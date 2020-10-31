.class public Landroid/os/ChildZygoteProcess;
.super Landroid/os/ZygoteProcess;
.source "ChildZygoteProcess.java"


# instance fields
.field private final mPid:I


# direct methods
.method constructor <init>(Landroid/net/LocalSocketAddress;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V

    iput p2, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    return-void
.end method


# virtual methods
.method public getPid()I
    .registers 2

    iget v0, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    return v0
.end method
