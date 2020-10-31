.class Landroid/view/inputmethod/EditorInfo$InitialSurroundingText$1;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;
    .registers 6

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;

    invoke-direct {v3, v0, v1, v2}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;-><init>(Ljava/lang/CharSequence;II)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;
    .registers 3

    new-array v0, p1, [Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$InitialSurroundingText$1;->newArray(I)[Landroid/view/inputmethod/EditorInfo$InitialSurroundingText;

    move-result-object p1

    return-object p1
.end method
