.class public final Landroid/view/textclassifier/SystemTextClassifierMetadata;
.super Ljava/lang/Object;
.source "SystemTextClassifierMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/SystemTextClassifierMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallingPackageName:Ljava/lang/String;

.field private final mUseDefaultTextClassifier:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifierMetadata$1;

    invoke-direct {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    iput-boolean p3, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    invoke-static {p0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    new-instance v3, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-direct {v3, v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "SystemTextClassifierMetadata {callingPackageName=%s, userId=%d, useDefaultTextClassifier=%b}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDefaultTextClassifier()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
