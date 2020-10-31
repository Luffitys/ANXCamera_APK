.class public final Landroid/net/TcpRepairWindow;
.super Ljava/lang/Object;
.source "TcpRepairWindow.java"


# instance fields
.field public final maxWindow:I

.field public final rcvWnd:I

.field public final rcvWndScale:I

.field public final rcvWup:I

.field public final sndWl1:I

.field public final sndWnd:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/TcpRepairWindow;->sndWl1:I

    iput p2, p0, Landroid/net/TcpRepairWindow;->sndWnd:I

    iput p3, p0, Landroid/net/TcpRepairWindow;->maxWindow:I

    iput p4, p0, Landroid/net/TcpRepairWindow;->rcvWnd:I

    iput p5, p0, Landroid/net/TcpRepairWindow;->rcvWup:I

    iput p6, p0, Landroid/net/TcpRepairWindow;->rcvWndScale:I

    return-void
.end method
