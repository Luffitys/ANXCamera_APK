.class public Lmiui/contentcatcher/sdk/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityHashCode:Ljava/lang/String;

.field private mActivityName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/contentcatcher/sdk/Token$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Token$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    iput-object p2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    iput-object p1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    iput p3, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    iput-object p2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    iput-object p1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    iput p4, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    iput-object p3, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityHashCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    return v0
.end method

.method public isMatch(Lmiui/contentcatcher/sdk/Token;)Z
    .registers 4

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v0

    iget v1, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    if-ne v0, v1, :cond_2a

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityHashCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token {pkg name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activity name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityhashcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
