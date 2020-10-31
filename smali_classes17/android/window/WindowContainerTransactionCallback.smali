.class public abstract Landroid/window/WindowContainerTransactionCallback;
.super Ljava/lang/Object;
.source "WindowContainerTransactionCallback.java"


# instance fields
.field final mInterface:Landroid/window/IWindowContainerTransactionCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/window/WindowContainerTransactionCallback$1;

    invoke-direct {v0, p0}, Landroid/window/WindowContainerTransactionCallback$1;-><init>(Landroid/window/WindowContainerTransactionCallback;)V

    iput-object v0, p0, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    return-void
.end method


# virtual methods
.method public abstract onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
.end method
