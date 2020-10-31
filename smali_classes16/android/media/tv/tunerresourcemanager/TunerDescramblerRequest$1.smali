.class Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest$1;
.super Ljava/lang/Object;
.source "TunerDescramblerRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    invoke-direct {v1, p1, v0}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;-><init>(Landroid/os/Parcel;Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest$1;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    return-object v1

    :catch_7
    move-exception v1

    const-string v2, "TunerDescramblerRequest"

    const-string v3, "Exception creating TunerDescramblerRequest from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .registers 3

    new-array v0, p1, [Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest$1;->newArray(I)[Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    move-result-object p1

    return-object p1
.end method
