.class public Lcom/miui/whetstone/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPrePackageName:Ljava/lang/String;

.field public mPreUid:I

.field public mScreenPackageName:Ljava/lang/String;

.field public mScreenUid:I

.field public mTopMultiPackageName:Ljava/lang/String;

.field public mTopMultiUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/whetstone/AppInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/AppInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/AppInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    iput-object p3, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    iput p4, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    iput-object p5, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    iput p6, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
