.class final Lcom/arcsoft/camera/utils/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Parcel;)Lcom/arcsoft/camera/utils/b;
    .locals 0

    new-instance p0, Lcom/arcsoft/camera/utils/b;

    invoke-direct {p0}, Lcom/arcsoft/camera/utils/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/b;->OooO0O0(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public OooO0O0(I)[Lcom/arcsoft/camera/utils/b;
    .locals 0

    new-array p0, p1, [Lcom/arcsoft/camera/utils/b;

    return-object p0
.end method

.method public synthetic OooO0OO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO0o0;->OooO00o(Landroid/os/Parcel;)Lcom/arcsoft/camera/utils/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO0Oo(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO0o0;->OooO0O0(I)[Lcom/arcsoft/camera/utils/b;

    move-result-object p0

    return-object p0
.end method
