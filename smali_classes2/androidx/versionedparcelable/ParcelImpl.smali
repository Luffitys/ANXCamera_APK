.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParcel:Landroidx/versionedparcelable/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/versionedparcelable/d;

    invoke-direct {v0}, Landroidx/versionedparcelable/d;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/versionedparcelable/g;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/g;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->sa()Landroidx/versionedparcelable/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/i;

    return-void
.end method

.method public constructor <init>(Landroidx/versionedparcelable/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/i;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public ia()Landroidx/versionedparcelable/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/i;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/i;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    new-instance p2, Landroidx/versionedparcelable/g;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/g;-><init>(Landroid/os/Parcel;)V

    iget-object p0, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/i;

    invoke-virtual {p2, p0}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/i;)V

    return-void
.end method
