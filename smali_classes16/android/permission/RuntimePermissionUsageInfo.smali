.class public final Landroid/permission/RuntimePermissionUsageInfo;
.super Ljava/lang/Object;
.source "RuntimePermissionUsageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mNumUsers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/permission/RuntimePermissionUsageInfo$1;

    invoke-direct {v0}, Landroid/permission/RuntimePermissionUsageInfo$1;-><init>()V

    sput-object v0, Landroid/permission/RuntimePermissionUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/permission/RuntimePermissionUsageInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/permission/RuntimePermissionUsageInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/permission/RuntimePermissionUsageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    iput-object p1, p0, Landroid/permission/RuntimePermissionUsageInfo;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/permission/RuntimePermissionUsageInfo;->mNumUsers:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppAccessCount()I
    .registers 2

    iget v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mNumUsers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mNumUsers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
