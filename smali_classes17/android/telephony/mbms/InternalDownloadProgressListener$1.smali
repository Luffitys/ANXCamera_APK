.class Landroid/telephony/mbms/InternalDownloadProgressListener$1;
.super Ljava/lang/Object;
.source "InternalDownloadProgressListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

.field final synthetic val$currentDecodedSize:I

.field final synthetic val$currentDownloadSize:I

.field final synthetic val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic val$fullDecodedSize:I

.field final synthetic val$fullDownloadSize:I

.field final synthetic val$request:Landroid/telephony/mbms/DownloadRequest;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadProgressListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 8

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDownloadSize:I

    iput p5, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDownloadSize:I

    iput p6, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDecodedSize:I

    iput p7, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDecodedSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

    # getter for: Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;
    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadProgressListener;->access$000(Landroid/telephony/mbms/InternalDownloadProgressListener;)Landroid/telephony/mbms/DownloadProgressListener;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v3, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v4, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDownloadSize:I

    iget v5, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDownloadSize:I

    iget v6, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDecodedSize:I

    iget v7, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDecodedSize:I

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/mbms/DownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    return-void
.end method
