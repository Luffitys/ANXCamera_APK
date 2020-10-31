.class Landroid/service/autofill/LuhnChecksumValidator$1;
.super Ljava/lang/Object;
.source "LuhnChecksumValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/LuhnChecksumValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/LuhnChecksumValidator;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/LuhnChecksumValidator;
    .registers 5

    new-instance v0, Landroid/service/autofill/LuhnChecksumValidator;

    const-class v1, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    invoke-direct {v0, v1}, Landroid/service/autofill/LuhnChecksumValidator;-><init>([Landroid/view/autofill/AutofillId;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/LuhnChecksumValidator$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/LuhnChecksumValidator;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/LuhnChecksumValidator;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/LuhnChecksumValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/LuhnChecksumValidator$1;->newArray(I)[Landroid/service/autofill/LuhnChecksumValidator;

    move-result-object p1

    return-object p1
.end method
