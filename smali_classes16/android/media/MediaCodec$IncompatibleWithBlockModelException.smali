.class public Landroid/media/MediaCodec$IncompatibleWithBlockModelException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncompatibleWithBlockModelException"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaCodec;


# direct methods
.method constructor <init>(Landroid/media/MediaCodec;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
