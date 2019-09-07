.class final Lcom/arcsoft/camera/utils/f;
.super Ljava/lang/Object;
.source "MPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/camera/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/arcsoft/camera/utils/b;
    .locals 0

    new-instance p0, Lcom/arcsoft/camera/utils/b;

    invoke-direct {p0}, Lcom/arcsoft/camera/utils/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/b;->a(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/arcsoft/camera/utils/b;
    .locals 0

    new-array p0, p1, [Lcom/arcsoft/camera/utils/b;

    return-object p0
.end method

.method public synthetic b(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/f;->a(Landroid/os/Parcel;)Lcom/arcsoft/camera/utils/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/f;->a(I)[Lcom/arcsoft/camera/utils/b;

    move-result-object p0

    return-object p0
.end method
