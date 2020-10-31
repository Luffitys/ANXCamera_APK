.class public final Landroid/service/settings/suggestions/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/suggestions/Suggestion$Builder;,
        Landroid/service/settings/suggestions/Suggestion$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HAS_BUTTON:I = 0x1

.field public static final FLAG_ICON_TINTABLE:I = 0x2


# instance fields
.field private final mFlags:I

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mId:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mSummary:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/settings/suggestions/Suggestion$1;

    invoke-direct {v0}, Landroid/service/settings/suggestions/Suggestion$1;-><init>()V

    sput-object v0, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/settings/suggestions/Suggestion$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/service/settings/suggestions/Suggestion$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/service/settings/suggestions/Suggestion$Builder;->mId:Ljava/lang/String;
    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->access$000(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    # getter for: Landroid/service/settings/suggestions/Suggestion$Builder;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->access$100(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    # getter for: Landroid/service/settings/suggestions/Suggestion$Builder;->mSummary:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->access$200(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    # getter for: Landroid/service/settings/suggestions/Suggestion$Builder;->mIcon:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->access$300(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    # getter for: Landroid/service/settings/suggestions/Suggestion$Builder;->mFlags:I
    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->access$400(Landroid/service/settings/suggestions/Suggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    # getter for: Landroid/service/settings/suggestions/Suggestion$Builder;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->access$500(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/settings/suggestions/Suggestion$Builder;Landroid/service/settings/suggestions/Suggestion$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/service/settings/suggestions/Suggestion$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
