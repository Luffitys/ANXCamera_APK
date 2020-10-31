.class public final Landroid/service/autofill/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/service/autofill/FieldClassificationUserData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/UserData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_CATEGORY_COUNT:I = 0xa

.field private static final DEFAULT_MAX_FIELD_CLASSIFICATION_IDS_SIZE:I = 0xa

.field private static final DEFAULT_MAX_USER_DATA_SIZE:I = 0x32

.field private static final DEFAULT_MAX_VALUE_LENGTH:I = 0x64

.field private static final DEFAULT_MIN_VALUE_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UserData"


# instance fields
.field private final mCategoryAlgorithms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryArgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryIds:[Ljava/lang/String;

.field private final mDefaultAlgorithm:Ljava/lang/String;

.field private final mDefaultArgs:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/UserData$1;

    invoke-direct {v0}, Landroid/service/autofill/UserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/UserData$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$000(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    # getter for: Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$100(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    # getter for: Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$100(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    # getter for: Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$200(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    # getter for: Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$200(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    # getter for: Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$200(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    # getter for: Landroid/service/autofill/UserData$Builder;->mDefaultAlgorithm:Ljava/lang/String;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$300(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    # getter for: Landroid/service/autofill/UserData$Builder;->mDefaultArgs:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$400(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    # getter for: Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$500(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    # getter for: Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$600(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;)V

    return-void
.end method

.method public static dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxUserDataSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxFieldClassificationIdsSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxCategoryCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "minValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method private static getInt(Ljava/lang/String;I)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :cond_f
    if-nez v0, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; hardcoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserData"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_30
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getMaxCategoryCount()I
    .registers 2

    const-string v0, "autofill_user_data_max_category_count"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxFieldClassificationIdsSize()I
    .registers 2

    const-string v0, "autofill_user_data_max_field_classification_size"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxUserDataSize()I
    .registers 2

    const-string v0, "autofill_user_data_max_user_data_size"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxValueLength()I
    .registers 2

    const-string v0, "autofill_user_data_max_value_length"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMinValueLength()I
    .registers 2

    const-string v0, "autofill_user_data_min_value_length"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Default Algorithm: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Default Args"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    const-string v1, ": "

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_7e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Algorithms per category: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3c
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_7e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "args="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_7e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Field ids size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    :goto_8d
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_ac

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_ac
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Values size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    :goto_bb
    iget-object v2, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_da

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    :cond_da
    return-void
.end method

.method public getCategoryIds()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFieldClassificationArgs()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFieldClassificationAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_17

    :cond_e
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getFieldClassificationArgs()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserData: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
