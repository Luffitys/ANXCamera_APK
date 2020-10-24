.class Lnet/majorkernelpanic/streaming/video/H264Stream$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/video/H264Stream;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/video/H264Stream;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream$1;->this$0:Lnet/majorkernelpanic/streaming/video/H264Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const-string p1, "H264Stream"

    const-string p3, "MediaRecorder callback called !"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x320

    if-ne p2, p3, :cond_0

    const-string p2, "MediaRecorder: MAX_DURATION_REACHED"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/16 p3, 0x321

    if-ne p2, p3, :cond_1

    const-string p2, "MediaRecorder: MAX_FILESIZE_REACHED"

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    const-string p2, "MediaRecorder: INFO_UNKNOWN"

    goto :goto_0

    :cond_2
    const-string p2, "WTF ?"

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/H264Stream$1;->this$0:Lnet/majorkernelpanic/streaming/video/H264Stream;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/video/H264Stream;->access$000(Lnet/majorkernelpanic/streaming/video/H264Stream;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
