.class Lcom/android/internal/view/InlineSuggestionsRequestInfo$1;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/InlineSuggestionsRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/view/InlineSuggestionsRequestInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .registers 3

    new-instance v0, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/view/InlineSuggestionsRequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .registers 3

    new-array v0, p1, [Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/view/InlineSuggestionsRequestInfo$1;->newArray(I)[Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    move-result-object p1

    return-object p1
.end method
