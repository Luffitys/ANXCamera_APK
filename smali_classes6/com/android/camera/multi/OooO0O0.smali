.class public final synthetic Lcom/android/camera/multi/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/multi/OooO0O0;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/multi/OooO0O0;->OooO0O0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/multi/OooO0O0;->OooO00o:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/multi/OooO0O0;->OooO0O0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    check-cast p1, Lcom/android/camera/multi/PluginInfo;

    invoke-static {v0, p0, p1}, Lcom/android/camera/multi/SampleDownloader;->OooO0OO(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
