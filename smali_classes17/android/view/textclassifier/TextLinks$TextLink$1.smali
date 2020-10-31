.class Landroid/view/textclassifier/TextLinks$TextLink$1;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks$TextLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textclassifier/TextLinks$TextLink;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 3

    # invokes: Landroid/view/textclassifier/TextLinks$TextLink;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;
    invoke-static {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->access$100(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextLinks$TextLink$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$TextLink;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 3

    new-array v0, p1, [Landroid/view/textclassifier/TextLinks$TextLink;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextLinks$TextLink$1;->newArray(I)[Landroid/view/textclassifier/TextLinks$TextLink;

    move-result-object p1

    return-object p1
.end method
