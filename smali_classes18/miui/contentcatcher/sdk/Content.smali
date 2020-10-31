.class public Lmiui/contentcatcher/sdk/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/Content;",
            ">;"
        }
    .end annotation
.end field

.field public static JOB:Ljava/lang/String;

.field public static TARGET:Ljava/lang/String;

.field public static TOKEN_KEY:Ljava/lang/String;


# instance fields
.field public mCatchType:I

.field public mCatcherToken:Ljava/lang/String;

.field public mFavIntent:Landroid/content/Intent;

.field public mInjectorToken:Lmiui/contentcatcher/sdk/Token;

.field public mJob:Ljava/lang/String;

.field public mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "target"

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->TARGET:Ljava/lang/String;

    const-string v0, "job"

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->JOB:Ljava/lang/String;

    const-string v0, "token"

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->TOKEN_KEY:Ljava/lang/String;

    new-instance v0, Lmiui/contentcatcher/sdk/Content$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Content$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lmiui/contentcatcher/sdk/Token;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    iput p1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    iput-object p2, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object p3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object p4, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    iput-object p1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    sget-object v0, Lmiui/contentcatcher/sdk/Content;->TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_28

    instance-of v1, v0, Lmiui/contentcatcher/sdk/Token;

    if-eqz v1, :cond_28

    move-object v1, v0

    check-cast v1, Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    :cond_28
    sget-object v1, Lmiui/contentcatcher/sdk/Content;->TARGET:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    sget-object v1, Lmiui/contentcatcher/sdk/Content;->JOB:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    const-string v1, ""

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/Content$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/Content;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getInjectorToken()Lmiui/contentcatcher/sdk/Token;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    return-object v0
.end method

.method public getTargetTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Content{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    const-string v2, "; "

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFavIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    iget v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    if-eqz v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCatchType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_46
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCatcherToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_67
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    if-eqz v1, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInjectorToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v3}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v4}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v3}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9f
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    if-eqz v1, :cond_f9

    const-string v1, "mResultMap[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, ""

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    :try_start_c4
    instance-of v6, v5, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_cc

    const-string v6, "bitmap"

    move-object v4, v6

    goto :goto_d1

    :cond_cc
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d0} :catch_d2

    move-object v4, v6

    :goto_d1
    goto :goto_d3

    :catch_d2
    move-exception v6

    :goto_d3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b2

    :cond_f4
    const-string v1, " ];  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f9
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTarget="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11a
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mJob="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13b
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
