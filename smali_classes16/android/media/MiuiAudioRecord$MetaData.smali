.class public final Landroid/media/MiuiAudioRecord$MetaData;
.super Ljava/lang/Object;
.source "MiuiAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MetaData"
.end annotation


# instance fields
.field public channelCount:I

.field public sampleRate:I

.field final synthetic this$0:Landroid/media/MiuiAudioRecord;


# direct methods
.method public constructor <init>(Landroid/media/MiuiAudioRecord;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MiuiAudioRecord$MetaData;->this$0:Landroid/media/MiuiAudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
