.class public Landroid/content/pm/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/parsing/ParsingPackageUtils$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# instance fields
.field private mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Landroid/content/pm/parsing/ParsingPackageUtils$Callback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    iput-object p2, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p4, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    return-void
.end method

.method private static aFloat(FILandroid/content/res/TypedArray;)F
    .registers 4

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static aFloat(ILandroid/content/res/TypedArray;)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/parsing/ParsingPackage;)V
    .registers 8

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedActivity;->setResizeMode(I)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    const v6, -0x400001

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/parsing/component/ParsedActivity;->setFlags(I)Landroid/content/pm/parsing/component/ParsedActivity;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    return-void
.end method

.method private static anInt(IILandroid/content/res/TypedArray;)I
    .registers 4

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static anInt(ILandroid/content/res/TypedArray;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static anInteger(IILandroid/content/res/TypedArray;)I
    .registers 4

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method private static bool(ZILandroid/content/res/TypedArray;)Z
    .registers 4

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ")"

    const/16 v1, -0xc

    if-nez p1, :cond_32

    if-gt p0, p2, :cond_11

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires newer sdk version #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (current version is #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_32
    invoke-static {p3, p1}, Landroid/content/pm/parsing/ParsingPackageUtils;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_43
    array-length v2, p3

    const-string v3, "Requires development platform "

    if-lez v2, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (current platform is any of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this is a release platform."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p2, p1}, Landroid/content/pm/parsing/ParsingPackageUtils;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1c
    array-length v0, p2

    const-string v1, "Requires development platform "

    const/16 v2, -0xc

    if-lez v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (current platform is any of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but this is a release platform."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static convertNewPermissions(Landroid/content/pm/parsing/ParsingPackage;)V
    .registers 7

    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_4f

    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v4, v5, :cond_14

    goto :goto_4f

    :cond_14
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    if-nez v1, :cond_37

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": compat added "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_37
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3c
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p0, v4}, Landroid/content/pm/parsing/ParsingPackage;->addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/pm/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4f
    :goto_4f
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageParsing"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void
.end method

.method private static convertSplitPermissions(Landroid/content/pm/parsing/ParsingPackage;)V
    .registers 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_54

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_53

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v5

    invoke-virtual {v3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v6

    if-ge v5, v6, :cond_50

    invoke-virtual {v3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_50

    :cond_2f
    invoke-virtual {v3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    :goto_34
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_50

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    invoke-interface {p0, v7}, Landroid/content/pm/parsing/ParsingPackage;->addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/content/pm/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_53
    return-void

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method private static generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":app_details"

    invoke-static {v0, v0, v1, p0}, Landroid/content/pm/parsing/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getUiOptions()I

    move-result v4

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->isBaseHardwareAccelerated()Z

    move-result v5

    invoke-static {v0, v3, v4, v2, v5}, Landroid/content/pm/parsing/component/ParsedActivity;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/ParsingPackageRead;Z)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    sget-object v7, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v8

    const-wide/32 v9, 0x40000

    const-string v0, "collectCertificates"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    :try_start_13
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isStaticSharedLibrary()Z

    move-result v4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getTargetSdkVersion()I

    move-result v6

    move-object v1, v8

    move v3, p1

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/PackageParser$SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-nez v1, :cond_82

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$SigningDetails;

    move-object v7, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_94

    if-nez v1, :cond_7d

    const/4 v1, 0x0

    move-object v12, v7

    move v7, v1

    :goto_41
    :try_start_41
    array-length v1, v11

    if-ge v7, v1, :cond_78

    aget-object v2, v11, v7

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isStaticSharedLibrary()Z

    move-result v4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getTargetSdkVersion()I

    move-result v6

    move-object v1, v8

    move v3, p1

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/PackageParser$SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v0, v1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-nez v1, :cond_66

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$SigningDetails;

    move-object v12, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_66
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_78
    .catchall {:try_start_41 .. :try_end_78} :catchall_7a

    :cond_78
    move-object v7, v12

    goto :goto_7d

    :catchall_7a
    move-exception v0

    move-object v7, v12

    goto :goto_95

    :cond_7d
    :goto_7d
    nop

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-object v7

    :cond_82
    :try_start_82
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v0

    :goto_95
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/PackageParser$SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            ">;"
        }
    .end annotation

    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz p3, :cond_a

    const/4 v0, 0x2

    :cond_a
    if-eqz p2, :cond_12

    const/4 v1, 0x1

    :try_start_d
    invoke-static {p1, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    goto :goto_16

    :cond_12
    invoke-static {p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1
    :try_end_16
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_d .. :try_end_16} :catch_47

    :goto_16
    nop

    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p4, v2, :cond_20

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_20
    iget-object v2, p4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2, v3}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_42

    const/16 v2, -0x68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has mismatched certificates"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_42
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :catch_47
    move-exception v1

    const/16 v2, -0x67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed collecting certificates for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static hasDomainURLs(Landroid/content/pm/parsing/ParsingPackage;)Z
    .registers 11

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_4b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_48

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto :goto_43

    :cond_2b
    invoke-virtual {v7, v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_43

    :cond_32
    const-string v8, "http"

    invoke-virtual {v7, v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_46

    const-string v8, "https"

    invoke-virtual {v7, v8}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    goto :goto_46

    :cond_43
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_46
    :goto_46
    const/4 v8, 0x1

    return v8

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_4b
    const/4 v2, 0x0

    return v2
.end method

.method private static matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move-object v1, p1

    goto :goto_10

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_71

    const/4 v2, 0x3

    if-ne v3, v2, :cond_17

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_71

    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    goto :goto_6

    :cond_1b
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_2e
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_6b

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_51
    :try_start_51
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_6b

    move-object v0, v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_70

    :catchall_6b
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    :cond_70
    :goto_70
    goto :goto_6

    :cond_71
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v1, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p2, p3, p0}, Landroid/content/pm/parsing/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedAttribution;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addAttribution(Landroid/content/pm/parsing/component/ParsedAttribution;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Landroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    const-string v1, "/mnt/expand/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_26

    :cond_25
    move-object v11, v0

    :goto_26
    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_44

    const/16 v0, -0x65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed adding asset path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_44
    :try_start_44
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v9, v12, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_16d

    move-object v13, v0

    :try_start_4b
    new-instance v5, Landroid/content/res/Resources;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_15b

    move-object/from16 v14, p0

    :try_start_4f
    iget-object v0, v14, Landroid/content/pm/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x0

    invoke-direct {v5, v9, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v6, v13

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_95
    .catchall {:try_start_4f .. :try_end_95} :catchall_159

    if-eqz v13, :cond_9a

    :try_start_97
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_16b

    :cond_9a
    return-object v1

    :cond_9b
    :try_start_9b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/ParsingPackage;

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string v2, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v3, 0x7e97bf3

    invoke-interface {v8, v2, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_c6

    const/16 v3, -0x7c

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_c0
    .catchall {:try_start_9b .. :try_end_c0} :catchall_159

    if-eqz v13, :cond_c5

    :try_start_c2
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_16b

    :cond_c5
    return-object v3

    :cond_c6
    :try_start_c6
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v4

    if-eqz v4, :cond_136

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_dc
    if-ge v7, v6, :cond_131

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v3, v17

    if-eqz v3, :cond_125

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_125

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_fc
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_120

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/pm/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-object/from16 v0, v18

    move-object/from16 v2, v20

    goto :goto_fc

    :cond_120
    move-object/from16 v18, v0

    move-object/from16 v20, v2

    goto :goto_129

    :cond_125
    move-object/from16 v18, v0

    move-object/from16 v20, v2

    :goto_129
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    move-object/from16 v2, v20

    const/4 v3, 0x0

    goto :goto_dc

    :cond_131
    move-object/from16 v18, v0

    move-object/from16 v20, v2

    goto :goto_13a

    :cond_136
    move-object/from16 v18, v0

    move-object/from16 v20, v2

    :goto_13a
    invoke-interface {v1, v11}, Landroid/content/pm/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_14a

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/ParsingPackageRead;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_14f

    :cond_14a
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;

    :goto_14f
    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_153
    .catchall {:try_start_c6 .. :try_end_153} :catchall_159

    if-eqz v13, :cond_158

    :try_start_155
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_16b

    :cond_158
    return-object v0

    :catchall_159
    move-exception v0

    goto :goto_15e

    :catchall_15b
    move-exception v0

    move-object/from16 v14, p0

    :goto_15e
    move-object v1, v0

    if-eqz v13, :cond_16a

    :try_start_161
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_165

    goto :goto_16a

    :catchall_165
    move-exception v0

    move-object v2, v0

    :try_start_167
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16a
    :goto_16a
    throw v1
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16b} :catch_16b

    :catch_16b
    move-exception v0

    goto :goto_170

    :catch_16d
    move-exception v0

    move-object/from16 v14, p0

    :goto_170
    const/16 v1, -0x66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read manifest from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-static {v8, v9, v9}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v8, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/Pair;

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const/16 v0, -0x6a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected base APK, but found split "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_43
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v6, p4

    invoke-virtual {v6, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    const/4 v0, 0x0

    :try_start_4c
    const-string v1, "coreApp"

    const/4 v2, 0x0

    invoke-interface {v9, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    move-object/from16 v5, p0

    iget-object v12, v5, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v13, v18

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v19

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_8b

    nop

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v12, v7

    move/from16 v7, p6

    :try_start_72
    invoke-direct/range {v1 .. v7}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_89

    if-eqz v2, :cond_81

    nop

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_81
    :try_start_81
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_89

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_89
    move-exception v0

    goto :goto_8d

    :catchall_8b
    move-exception v0

    move-object v12, v7

    :goto_8d
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a2

    :cond_7
    goto/16 :goto_134

    :sswitch_9
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto/16 :goto_135

    :sswitch_15
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_135

    :sswitch_22
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_135

    :sswitch_2f
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_135

    :sswitch_3b
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_135

    :sswitch_48
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_135

    :sswitch_55
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_135

    :sswitch_62
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_135

    :sswitch_6f
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_135

    :sswitch_7b
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_135

    :sswitch_87
    const-string v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_135

    :sswitch_93
    const-string v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_135

    :sswitch_9e
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_135

    :sswitch_ab
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto/16 :goto_135

    :sswitch_b8
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_135

    :sswitch_c4
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_135

    :sswitch_cf
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_135

    :sswitch_db
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_135

    :sswitch_e5
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_135

    :sswitch_f0
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_135

    :sswitch_fa
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto :goto_135

    :sswitch_106
    const-string/jumbo v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_135

    :sswitch_111
    const-string/jumbo v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_135

    :sswitch_11d
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_135

    :sswitch_128
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_135

    :goto_134
    const/4 v0, -0x1

    :goto_135
    packed-switch v0, :pswitch_data_208

    const-string v0, "<manifest>"

    invoke-static {v0, p3, p5, p2}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_13f
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_144
    invoke-static {p6, p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_149
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_151
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_156
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_15b
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_160
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_165
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_16a
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_16f
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_174
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_179
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_17e
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_183
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_188
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_18d
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_192
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_197
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_19c
    invoke-static {p2, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_1a2
    .sparse-switch
        -0x69b7c34b -> :sswitch_128
        -0x6366e724 -> :sswitch_11d
        -0x420dbfb6 -> :sswitch_111
        -0x410bbbb0 -> :sswitch_106
        -0x3b806306 -> :sswitch_fa
        -0x3a5d850a -> :sswitch_f0
        -0x1eda3a31 -> :sswitch_e5
        -0x12786f81 -> :sswitch_db
        -0xfe5a947 -> :sswitch_cf
        -0xa2d06ff -> :sswitch_c4
        -0x7b47f16 -> :sswitch_b8
        0x71978d4 -> :sswitch_ab
        0x14d5f341 -> :sswitch_9e
        0x1b1d76ff -> :sswitch_93
        0x20752f6e -> :sswitch_87
        0x23c12e70 -> :sswitch_7b
        0x25af09e7 -> :sswitch_6f
        0x270bd766 -> :sswitch_62
        0x3573e73e -> :sswitch_55
        0x501aeeb1 -> :sswitch_48
        0x55ccf562 -> :sswitch_3b
        0x6446f4e8 -> :sswitch_2f
        0x65ae49fd -> :sswitch_22
        0x6adbbdf5 -> :sswitch_15
        0x6c5ff78e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_19c
        :pswitch_197
        :pswitch_192
        :pswitch_192
        :pswitch_18d
        :pswitch_188
        :pswitch_183
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_179
        :pswitch_174
        :pswitch_16f
        :pswitch_16a
        :pswitch_165
        :pswitch_160
        :pswitch_15b
        :pswitch_156
        :pswitch_151
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_144
        :pswitch_13f
    .end packed-switch
.end method

.method private parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static/range {p1 .. p3}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v9

    :cond_f
    const/4 v0, -0x1

    const/4 v10, 0x4

    invoke-static {v0, v10, v8}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    move-object/from16 v11, p2

    invoke-interface {v11, v0}, Landroid/content/pm/parsing/ParsingPackage;->setInstallLocation(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v12, 0x1

    invoke-static {v12, v1, v8}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/ParsingPackage;->setTargetSandboxVersion(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2b

    move v1, v12

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/ParsingPackage;->setExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;

    const/4 v0, 0x0

    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move v14, v0

    :goto_35
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v15, v0

    if-eq v0, v12, :cond_99

    const/4 v0, 0x3

    if-ne v15, v0, :cond_45

    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_99

    :cond_45
    const/4 v0, 0x2

    if-eq v15, v0, :cond_49

    goto :goto_35

    :cond_49
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "application"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    if-eqz v14, :cond_66

    const-string v0, "PackageParsing"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v6

    goto :goto_8d

    :cond_66
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v6

    goto :goto_8d

    :cond_7a
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v16, v6

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    :goto_8d
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_98
    goto :goto_35

    :cond_99
    if-nez v14, :cond_b9

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_b9

    const-wide/32 v0, 0x8fcab42

    const-string v2, "<manifest> does not contain an <application> or <instrumentation>"

    invoke-interface {v7, v2, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_b9
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/parsing/component/ParsedAttribution;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_cc

    const/16 v0, -0x65

    const-string v1, "Combination <feature> tags are not valid"

    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_cc
    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->convertNewPermissions(Landroid/content/pm/parsing/ParsingPackage;)V

    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->convertSplitPermissions(Landroid/content/pm/parsing/ParsingPackage;)V

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v10, :cond_fc

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isSupportsSmallScreens()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isSupportsNormalScreens()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isSupportsLargeScreens()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isSupportsExtraLargeScreens()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_ff

    :cond_fc
    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/parsing/ParsingPackage;)V

    :cond_ff
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private parseBaseAppBasicFlags(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .registers 11

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    nop

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {v1, v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setAllowBackup(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v1, v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setAllowClearUserData(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x36

    invoke-static {v1, v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setAllowClearUserDataOnFailedRestore(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-static {v1, v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v1, v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setEnabled(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v3, 0x22

    invoke-static {v1, v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setExtractNativeLibs(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v1, v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setHasCode(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v3, v4, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setAllowTaskReparenting(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x2f

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setCantSaveState(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x3a

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setCrossProfile(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0xa

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setDebuggable(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x26

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x27

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x39

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setForceQueryable(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1f

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setGame(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x32

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setHasFragileUserData(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x18

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setLargeHeap(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x21

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setMultiArch(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x3d

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1b

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1a

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setSupportsRtl(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0xf

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setTestOnly(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x35

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x31

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setUsesNonSdkApi(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x14

    invoke-static {v3, v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setVmSafeMode(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x3c

    invoke-static {v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/parsing/ParsingPackage;->setAutoRevokePermissions(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_10f

    move v6, v1

    goto :goto_110

    :cond_10f
    move v6, v3

    :goto_110
    const/16 v7, 0x37

    invoke-static {v6, v7, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/content/pm/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    if-lt v0, v4, :cond_11e

    move v4, v1

    goto :goto_11f

    :cond_11e
    move v4, v3

    :goto_11f
    const/16 v6, 0x17

    invoke-static {v4, v6, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/content/pm/parsing/ParsingPackage;->setBaseHardwareAccelerated(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    if-ge v0, v5, :cond_12d

    move v4, v1

    goto :goto_12e

    :cond_12d
    move v4, v3

    :goto_12e
    const/16 v6, 0x38

    invoke-static {v4, v6, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/content/pm/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_13d

    goto :goto_13e

    :cond_13d
    move v1, v3

    :goto_13e
    const/16 v6, 0x24

    invoke-static {v1, v6, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {v2, v1}, Landroid/content/pm/parsing/ParsingPackage;->setUsesCleartextTraffic(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setUiOptions(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v6, 0x2b

    invoke-static {v2, v6, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setCategory(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setMaxAspectRatio(F)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setMinAspectRatio(F)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setBanner(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setDescriptionRes(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setIconRes(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setLogo(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setNetworkSecurityConfigRes(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setRoundIconRes(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-static {v3, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setTheme(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-static {v5, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-static {v4, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v3, v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    return-void
.end method

.method private parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ae

    :cond_7
    goto :goto_5e

    :sswitch_8
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_5f

    :sswitch_13
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_5f

    :sswitch_1e
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_5f

    :sswitch_28
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_5f

    :sswitch_33
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5f

    :sswitch_3e
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_5f

    :sswitch_49
    const-string v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5f

    :sswitch_53
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_5f

    :goto_5e
    const/4 v0, -0x1

    :goto_5f
    packed-switch v0, :pswitch_data_d0

    const-string v0, "<application>"

    invoke-static {v0, p3, p5, p1}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_69
    invoke-static {p1, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_6e
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_74
    iget-object v5, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_80
    invoke-static {p1, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_85
    invoke-static {p1, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_8a
    invoke-static {p3, p4, p5, p1}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseLibrary(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_8f
    invoke-static {p3, p4, p5, p1}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseStaticLibrary(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :pswitch_94
    nop

    invoke-interface {p3}, Landroid/content/pm/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p3, p4, p5, v0, p1}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {p3, v1}, Landroid/content/pm/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_ac
    return-object v0

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x50de9846 -> :sswitch_53
        -0x4284098e -> :sswitch_49
        -0x4140b4a3 -> :sswitch_3e
        -0x3efb77a4 -> :sswitch_33
        0x88b87d -> :sswitch_28
        0x9e824bb -> :sswitch_1e
        0xa9d2283 -> :sswitch_13
        0x751e7745 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_74
        :pswitch_6e
        :pswitch_69
    .end packed-switch
.end method

.method private parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v14

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    if-nez v15, :cond_29

    :try_start_1a
    const-string v0, "<application> does not contain any attributes"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_24
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_47d

    :cond_29
    const/4 v0, 0x3

    const/4 v7, 0x0

    :try_start_2b
    invoke-virtual {v15, v0, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_47a

    move-object v6, v1

    const-string v1, "Empty class name in package "

    if-eqz v6, :cond_6a

    :try_start_34
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v0, "<application> invalid android:name"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_4e
    if-nez v3, :cond_67

    :try_start_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_67
    :try_start_67
    invoke-interface {v10, v3}, Landroid/content/pm/parsing/ParsingPackage;->setClassName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_24

    :cond_6a
    const/4 v5, 0x1

    :try_start_6b
    invoke-virtual {v15, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_47a

    move-object v4, v2

    if-eqz v4, :cond_82

    :try_start_72
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->setLabelRes(I)Landroid/content/pm/parsing/ParsingPackage;

    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_82

    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_24

    :cond_82
    :try_start_82
    invoke-direct {v8, v10, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    const/4 v3, 0x4

    const/16 v2, 0x400

    invoke-static {v2, v3, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v16
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_47a

    move-object/from16 v17, v16

    move-object/from16 v0, v17

    if-eqz v0, :cond_b6

    :try_start_92
    invoke-static {v13, v0}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    move-object/from16 v3, v18

    if-nez v3, :cond_b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_af
    .catchall {:try_start_92 .. :try_end_af} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_b3
    :try_start_b3
    invoke-interface {v10, v3}, Landroid/content/pm/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_24

    :cond_b6
    :try_start_b6
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isAllowBackup()Z

    move-result v3
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_47a

    if-eqz v3, :cond_132

    const/16 v3, 0x10

    :try_start_be
    invoke-static {v2, v3, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_114

    invoke-static {v13, v3}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    move-object/from16 v7, v20

    if-nez v7, :cond_e5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_e1
    .catchall {:try_start_be .. :try_end_e1} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_e5
    :try_start_e5
    invoke-interface {v10, v7}, Landroid/content/pm/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    move-object/from16 v21, v0

    const/16 v0, 0x12

    invoke-static {v5, v0, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/ParsingPackage;->setKillAfterRestore(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-static {v5, v2, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v5, v2, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/parsing/ParsingPackage;->setFullBackupOnly(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v5, v2, v15}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/parsing/ParsingPackage;->setBackupInForeground(Z)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_116

    :cond_114
    move-object/from16 v21, v0

    :goto_116
    const/16 v0, 0x23

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_134

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    move v2, v5

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_12e

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_12c

    const/4 v5, -0x1

    goto :goto_12d

    :cond_12c
    const/4 v5, 0x0

    :goto_12d
    move v2, v5

    :cond_12e
    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->setFullBackupContent(I)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_131
    .catchall {:try_start_e5 .. :try_end_131} :catchall_24

    goto :goto_134

    :cond_132
    move-object/from16 v21, v0

    :cond_134
    :goto_134
    const/16 v0, 0x8

    const/4 v7, 0x0

    :try_start_137
    invoke-virtual {v15, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_13b
    .catchall {:try_start_137 .. :try_end_13b} :catchall_47a

    if-eqz v2, :cond_154

    const/16 v2, 0x2d

    :try_start_13f
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_150

    iget-object v3, v8, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v3, v2}, Landroid/content/pm/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14e

    goto :goto_150

    :cond_14e
    move v5, v7

    goto :goto_151

    :cond_150
    :goto_150
    const/4 v5, 0x1

    :goto_151
    invoke-interface {v10, v5}, Landroid/content/pm/parsing/ParsingPackage;->setPersistent(Z)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_154
    .catchall {:try_start_13f .. :try_end_154} :catchall_24

    :cond_154
    :try_start_154
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result v2
    :try_end_158
    .catchall {:try_start_154 .. :try_end_158} :catchall_47a

    if-nez v2, :cond_163

    :try_start_15a
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isDebuggable()Z

    move-result v2
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_24

    if-eqz v2, :cond_161

    goto :goto_163

    :cond_161
    move v5, v7

    goto :goto_164

    :cond_163
    :goto_163
    const/4 v5, 0x1

    :goto_164
    :try_start_164
    invoke-interface {v10, v5}, Landroid/content/pm/parsing/ParsingPackage;->setProfileableByShell(Z)Landroid/content/pm/parsing/ParsingPackage;

    const/16 v2, 0x25

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3
    :try_end_16d
    .catchall {:try_start_164 .. :try_end_16d} :catchall_47a

    if-eqz v3, :cond_17c

    const/4 v5, 0x1

    :try_start_170
    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_17b
    .catchall {:try_start_170 .. :try_end_17b} :catchall_24

    goto :goto_187

    :cond_17c
    const/4 v5, 0x1

    const/16 v2, 0x18

    if-lt v14, v2, :cond_183

    move v2, v5

    goto :goto_184

    :cond_183
    move v2, v7

    :goto_184
    :try_start_184
    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_47a

    :goto_187
    const/16 v2, 0xc

    if-lt v14, v0, :cond_193

    const/16 v3, 0x400

    :try_start_18d
    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_191
    .catchall {:try_start_18d .. :try_end_191} :catchall_24

    move-object v3, v2

    goto :goto_198

    :cond_193
    :try_start_193
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_198
    invoke-static {v13, v13, v3, v9}, Landroid/content/pm/parsing/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v18
    :try_end_1a0
    .catchall {:try_start_193 .. :try_end_1a0} :catchall_47a

    if-eqz v18, :cond_1aa

    :try_start_1a2
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1a6
    .catchall {:try_start_1a2 .. :try_end_1a6} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1aa
    :try_start_1aa
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/String;

    invoke-interface {v10, v5}, Landroid/content/pm/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    const/16 v5, 0x30

    invoke-virtual {v15, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1bb
    .catchall {:try_start_1aa .. :try_end_1bb} :catchall_47a

    if-eqz v5, :cond_1e1

    :try_start_1bd
    invoke-static {v13, v5}, Landroid/content/pm/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v23, v18

    move-object/from16 v7, v23

    if-nez v7, :cond_1de

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1da
    .catchall {:try_start_1bd .. :try_end_1da} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1de
    :try_start_1de
    invoke-interface {v10, v7}, Landroid/content/pm/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_1e1
    const/16 v1, 0xb

    if-lt v14, v0, :cond_1ec

    const/16 v0, 0x400

    invoke-virtual {v15, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1eb
    .catchall {:try_start_1de .. :try_end_1eb} :catchall_24

    goto :goto_1f0

    :cond_1ec
    :try_start_1ec
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f0
    const/4 v7, 0x0

    iget-object v1, v8, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v20, v1

    move-object v1, v13

    move-object/from16 v23, v2

    move-object v2, v7

    move-object v7, v3

    move-object v3, v0

    move-object/from16 v17, v4

    move/from16 v4, p5

    move-object/from16 v22, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_20f
    .catchall {:try_start_1ec .. :try_end_20f} :catchall_47a

    if-eqz v2, :cond_219

    :try_start_211
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_215
    .catchall {:try_start_211 .. :try_end_215} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_219
    :try_start_219
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v3
    :try_end_226
    .catchall {:try_start_219 .. :try_end_226} :catchall_47a

    if-eqz v3, :cond_23a

    if-eqz v2, :cond_23a

    :try_start_22a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23a

    const-string v3, "cantSaveState applications can not use custom processes"

    invoke-interface {v9, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_236
    .catchall {:try_start_22a .. :try_end_236} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_23a
    :try_start_23a
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v3
    :try_end_23e
    .catchall {:try_start_23a .. :try_end_23e} :catchall_47a

    if-eqz v3, :cond_25f

    :try_start_240
    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid class loader name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_25b
    .catchall {:try_start_240 .. :try_end_25b} :catchall_24

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_25f
    const/16 v4, 0x3e

    const/4 v6, -0x1

    :try_start_262
    invoke-virtual {v15, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/content/pm/parsing/ParsingPackage;->setGwpAsanMode(I)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_269
    .catchall {:try_start_262 .. :try_end_269} :catchall_47a

    nop

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    nop

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    move/from16 v17, v1

    move/from16 v19, v2

    :goto_279
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v5, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_42e

    const/4 v1, 0x3

    if-ne v5, v1, :cond_293

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v7, :cond_28b

    goto :goto_293

    :cond_28b
    move/from16 v24, v5

    move/from16 v25, v7

    move-object/from16 v16, v13

    goto/16 :goto_434

    :cond_293
    :goto_293
    const/4 v1, 0x2

    if-eq v5, v1, :cond_297

    goto :goto_279

    :cond_297
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_482

    :cond_2a4
    goto :goto_2da

    :sswitch_2a5
    const-string/jumbo v2, "service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    move v2, v1

    goto :goto_2db

    :sswitch_2b0
    const-string v2, "activity-alias"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    const/4 v2, 0x4

    goto :goto_2db

    :sswitch_2ba
    const-string/jumbo v2, "receiver"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    move v2, v4

    goto :goto_2db

    :sswitch_2c5
    const-string/jumbo v2, "provider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    const/4 v2, 0x3

    goto :goto_2db

    :sswitch_2d0
    const-string v2, "activity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    const/4 v2, 0x0

    goto :goto_2db

    :goto_2da
    move v2, v6

    :goto_2db
    if-eqz v2, :cond_3c6

    if-eq v2, v4, :cond_3b4

    if-eq v2, v1, :cond_372

    const/4 v1, 0x3

    if-eq v2, v1, :cond_33d

    move-object/from16 v16, v13

    const/4 v13, 0x4

    if-eq v2, v13, :cond_30b

    move/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v4, p2

    move/from16 v24, v5

    move-object/from16 v5, p3

    move/from16 v25, v6

    move-object/from16 v6, p4

    move/from16 v26, v25

    const/16 v18, 0x0

    move/from16 v25, v7

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    goto/16 :goto_41b

    :cond_30b
    move/from16 v21, v1

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move/from16 v25, v7

    const/16 v18, 0x0

    sget-boolean v1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    invoke-static {v10, v11, v12, v1, v9}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseActivityAlias(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_33a

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_334

    move/from16 v7, v23

    goto :goto_336

    :cond_334
    move/from16 v7, v18

    :goto_336
    or-int/2addr v0, v7

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_33a
    move-object v2, v1

    goto/16 :goto_41b

    :cond_33d
    move/from16 v21, v1

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move/from16 v25, v7

    move-object/from16 v16, v13

    const/4 v13, 0x4

    const/16 v18, 0x0

    iget-object v1, v8, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/content/pm/parsing/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_36f

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_36f
    move-object v2, v1

    goto/16 :goto_41b

    :cond_372
    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move/from16 v25, v7

    move-object/from16 v16, v13

    const/4 v13, 0x4

    const/16 v18, 0x0

    const/16 v21, 0x3

    iget-object v1, v8, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/content/pm/parsing/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3b1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getOrder()I

    move-result v3

    if-eqz v3, :cond_3aa

    move/from16 v7, v23

    goto :goto_3ac

    :cond_3aa
    move/from16 v7, v18

    :goto_3ac
    or-int v19, v19, v7

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->addService(Landroid/content/pm/parsing/component/ParsedService;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_3b1
    move-object v2, v1

    goto/16 :goto_41b

    :cond_3b4
    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move/from16 v25, v7

    move-object/from16 v16, v13

    const/4 v13, 0x4

    const/16 v18, 0x0

    const/16 v21, 0x3

    goto :goto_3d9

    :cond_3c6
    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move/from16 v25, v7

    move-object/from16 v16, v13

    const/4 v13, 0x4

    const/16 v18, 0x0

    const/16 v21, 0x3

    const/16 v20, 0x1

    :goto_3d9
    iget-object v1, v8, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_419

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    if-eqz v20, :cond_409

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_402

    move/from16 v7, v23

    goto :goto_404

    :cond_402
    move/from16 v7, v18

    :goto_404
    or-int/2addr v0, v7

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_419

    :cond_409
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_412

    move/from16 v7, v23

    goto :goto_414

    :cond_412
    move/from16 v7, v18

    :goto_414
    or-int v17, v17, v7

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->addReceiver(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_419
    :goto_419
    move-object v2, v1

    nop

    :goto_41b
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_426

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_426
    move-object/from16 v13, v16

    move/from16 v7, v25

    move/from16 v6, v26

    goto/16 :goto_279

    :cond_42e
    move/from16 v24, v5

    move/from16 v25, v7

    move-object/from16 v16, v13

    :goto_434
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_456

    invoke-static/range {p1 .. p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_44d

    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_44d
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-interface {v10, v2}, Landroid/content/pm/parsing/ParsingPackage;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_456
    if-eqz v0, :cond_45b

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->sortActivities()Landroid/content/pm/parsing/ParsingPackage;

    :cond_45b
    if-eqz v17, :cond_460

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->sortReceivers()Landroid/content/pm/parsing/ParsingPackage;

    :cond_460
    if-eqz v19, :cond_465

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->sortServices()Landroid/content/pm/parsing/ParsingPackage;

    :cond_465
    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->setMaxAspectRatio(Landroid/content/pm/parsing/ParsingPackage;)V

    invoke-direct {v8, v10}, Landroid/content/pm/parsing/ParsingPackageUtils;->setMinAspectRatio(Landroid/content/pm/parsing/ParsingPackage;)V

    invoke-direct {v8, v10}, Landroid/content/pm/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Landroid/content/pm/parsing/ParsingPackage;)V

    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->hasDomainURLs(Landroid/content/pm/parsing/ParsingPackage;)Z

    move-result v1

    invoke-interface {v10, v1}, Landroid/content/pm/parsing/ParsingPackage;->setHasDomainUrls(Z)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_47a
    move-exception v0

    move-object/from16 v16, v13

    :goto_47d
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :sswitch_data_482
    .sparse-switch
        -0x62b40cf1 -> :sswitch_2d0
        -0x3adbfa0f -> :sswitch_2c5
        -0x30341611 -> :sswitch_2ba
        0x2f1ad612 -> :sswitch_2b0
        0x7643c6b5 -> :sswitch_2a5
    .end sparse-switch
.end method

.method private parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    const/4 v0, 0x0

    invoke-static {v12, v13, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v12, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/PackageParser$PackageLite;

    move-object/from16 v9, p0

    iget-boolean v0, v9, Landroid/content/pm/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, v11, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v0, :cond_3f

    const/16 v0, -0x7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a coreApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_3f
    const/4 v1, 0x0

    iget-boolean v0, v11, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v0, :cond_65

    iget-object v0, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    :try_start_4c
    invoke-static {v11}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Landroid/content/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, v11, v1, v14}, Landroid/content/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_56
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_4c .. :try_end_56} :catch_59

    move-object v8, v0

    move-object v7, v1

    goto :goto_6c

    :catch_59
    move-exception v0

    const/16 v2, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_65
    new-instance v0, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v11, v14}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    move-object v8, v0

    move-object v7, v1

    :goto_6c
    :try_start_6c
    invoke-interface {v8}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v3, Ljava/io/File;

    iget-object v0, v11, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Landroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_87
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6c .. :try_end_87} :catch_104
    .catchall {:try_start_6c .. :try_end_87} :catchall_fd

    if-eqz v1, :cond_a1

    :try_start_89
    invoke-interface {v12, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_8d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_89 .. :try_end_8d} :catch_99
    .catchall {:try_start_89 .. :try_end_8d} :catchall_91

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_91
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v2, v11

    goto/16 :goto_128

    :catch_99
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v2, v11

    goto/16 :goto_10a

    :cond_a1
    :try_start_a1
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/ParsingPackage;

    iget-object v2, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    iget-object v2, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iget-object v4, v11, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iget-object v6, v11, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    invoke-interface {v1, v2, v4, v6, v7}, Landroid/content/pm/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Landroid/content/pm/parsing/ParsingPackage;

    iget-object v2, v11, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    const/4 v4, 0x0

    :goto_bc
    if-ge v4, v2, :cond_e1

    invoke-interface {v8, v4}, Landroid/content/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v10
    :try_end_c2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_a1 .. :try_end_c2} :catch_104
    .catchall {:try_start_a1 .. :try_end_c2} :catchall_fd

    move-object/from16 v6, p0

    move-object/from16 v16, v7

    move-object/from16 v7, p1

    move-object/from16 v17, v8

    move-object v8, v1

    move v9, v4

    move/from16 v18, v2

    move-object v2, v11

    move/from16 v11, p3

    :try_start_d1
    invoke-direct/range {v6 .. v11}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    nop

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, p0

    move-object v11, v2

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v2, v18

    goto :goto_bc

    :cond_e1
    move/from16 v18, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v2, v11

    goto :goto_ee

    :cond_e9
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v2, v11

    :goto_ee
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-interface {v1, v4}, Landroid/content/pm/parsing/ParsingPackage;->setUse32BitAbi(Z)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface {v12, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_f7
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_d1 .. :try_end_f7} :catch_fb
    .catchall {:try_start_d1 .. :try_end_f7} :catchall_127

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :catch_fb
    move-exception v0

    goto :goto_10a

    :catchall_fd
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v2, v11

    goto :goto_128

    :catch_104
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v2, v11

    :goto_10a
    const/16 v1, -0x66

    :try_start_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load assets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_123
    .catchall {:try_start_10c .. :try_end_123} :catchall_127

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_127
    move-exception v0

    :goto_128
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public static parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/parsing/ParsingPackageUtils;

    new-instance v1, Landroid/content/pm/parsing/ParsingPackageUtils$1;

    invoke-direct {v1}, Landroid/content/pm/parsing/ParsingPackageUtils$1;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/content/pm/parsing/ParsingPackageUtils;-><init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Landroid/content/pm/parsing/ParsingPackageUtils$Callback;)V

    const/16 v1, -0x66

    :try_start_e
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4
    :try_end_16
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_e .. :try_end_16} :catch_37

    if-eqz v4, :cond_19

    return-object v3

    :cond_19
    nop

    :try_start_1a
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/ParsingPackage;

    if-eqz p3, :cond_2a

    nop

    invoke-static {v4, v2}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/ParsingPackageRead;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    invoke-interface {v4, v2}, Landroid/content/pm/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_2a
    invoke-interface {p0, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2e
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1a .. :try_end_2e} :catch_2f

    return-object v1

    :catch_2f
    move-exception v2

    const-string v4, "Error collecting package certificates"

    invoke-interface {p0, v1, v4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catch_37
    move-exception v2

    const-string v3, "Error parsing package"

    invoke-interface {p0, v1, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static parseDefaultOneTime(Ljava/io/File;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_7c

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    const/16 v3, -0x6c

    if-gez v1, :cond_20

    const-string v4, "<extension-sdk> must specify an sdkVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_20
    if-gez v2, :cond_29

    const-string v4, "<extension-sdk> must specify minExtensionVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_29
    :try_start_29
    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v4

    if-ge v4, v2, :cond_57

    const/16 v5, -0xc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " extension version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " which exceeds device version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_56} :catch_60

    return-object v3

    :cond_57
    nop

    invoke-virtual {p3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :catch_60
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Specified sdkVersion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :catchall_7c
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :goto_a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_69

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1b

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_69

    :cond_1b
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1f

    goto :goto_a

    :cond_1f
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "uses-feature"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-static {p2, p3}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v6

    iget v7, v6, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/FeatureInfo;->flags:I

    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_68

    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageParsing"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    goto :goto_a

    :cond_69
    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    :cond_7d
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 7

    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    :cond_24
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_35

    :cond_30
    nop

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Landroid/content/pm/parsing/component/ParsedInstrumentationUtils;->parseInstrumentation(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addInstrumentation(Landroid/content/pm/parsing/component/ParsedInstrumentation;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    const/4 v0, -0x1

    const/4 v6, 0x0

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v6

    move v6, v0

    :goto_24
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    const-string v13, "PackageParsing"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_221

    const/4 v0, 0x3

    if-ne v12, v0, :cond_40

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_38

    goto :goto_40

    :cond_38
    move/from16 v18, v5

    move/from16 v17, v6

    move/from16 v19, v12

    goto/16 :goto_227

    :cond_40
    :goto_40
    if-ne v12, v0, :cond_51

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_4b

    const/4 v11, 0x0

    const/4 v6, -0x1

    goto :goto_24

    :cond_4b
    move/from16 v18, v5

    move/from16 v17, v6

    goto/16 :goto_16f

    :cond_51
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v14, -0x519cd6bd

    move/from16 v18, v5

    if-eq v0, v14, :cond_80

    const v14, -0x30ac780c    # -3.5489024E9f

    if-eq v0, v14, :cond_76

    const v14, 0x717268fb

    if-eq v0, v14, :cond_6b

    :cond_6a
    goto :goto_8b

    :cond_6b
    const-string/jumbo v0, "public-key"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_8c

    :cond_76
    const-string v0, "key-set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    goto :goto_8c

    :cond_80
    const-string/jumbo v0, "upgrade-key-set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x2

    goto :goto_8c

    :goto_8b
    const/4 v0, -0x1

    :goto_8c
    const-string v14, "Improperly nested \'key-set\' tag at "

    if-eqz v0, :cond_1dc

    const/4 v5, 0x1

    if-eq v0, v5, :cond_cd

    const/4 v5, 0x2

    if-eq v0, v5, :cond_ad

    const-string v0, "<key-sets>"

    invoke-static {v0, v2, v4, v1}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_a7
    move/from16 v17, v6

    move/from16 v19, v12

    goto/16 :goto_1ce

    :cond_ad
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_b4
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_c8

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move/from16 v17, v6

    move/from16 v19, v12

    goto/16 :goto_1ce

    :catchall_c8
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_cd
    if-nez v11, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_e7
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_ee
    invoke-static {v0, v5}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    invoke-static {v14, v5}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v14
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_1d3

    if-nez v14, :cond_132

    :try_start_f9
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_132

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_104
    .catchall {:try_start_f9 .. :try_end_104} :catchall_12b

    move/from16 v17, v6

    :try_start_106
    const-string v6, "\'public-key\' "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must define a public-key value on first use at "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_122
    .catchall {:try_start_106 .. :try_end_122} :catchall_126

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :catchall_126
    move-exception v0

    move/from16 v19, v12

    goto/16 :goto_1d8

    :catchall_12b
    move-exception v0

    move/from16 v17, v6

    move/from16 v19, v12

    goto/16 :goto_1d8

    :cond_132
    move/from16 v17, v6

    if-eqz v14, :cond_1b9

    :try_start_136
    invoke-static {v14}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v6
    :try_end_13a
    .catchall {:try_start_136 .. :try_end_13a} :catchall_1b5

    if-nez v6, :cond_175

    move/from16 v19, v12

    :try_start_13e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v14

    const-string v14, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " key-set "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_16b
    .catchall {:try_start_13e .. :try_end_16b} :catchall_1d1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    :goto_16f
    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_24

    :cond_175
    move/from16 v19, v12

    move-object/from16 v16, v14

    :try_start_179
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1b1

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/PublicKey;

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18c

    goto :goto_1b1

    :cond_18c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value of \'public-key\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " conflicts with previously defined value at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12
    :try_end_1ad
    .catchall {:try_start_179 .. :try_end_1ad} :catchall_1d1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v12

    :cond_1b1
    :goto_1b1
    :try_start_1b1
    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bd

    :catchall_1b5
    move-exception v0

    move/from16 v19, v12

    goto :goto_1d8

    :cond_1b9
    move/from16 v19, v12

    move-object/from16 v16, v14

    :goto_1bd
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c9
    .catchall {:try_start_1b1 .. :try_end_1c9} :catchall_1d1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    nop

    :goto_1ce
    move/from16 v6, v17

    goto :goto_218

    :catchall_1d1
    move-exception v0

    goto :goto_1d8

    :catchall_1d3
    move-exception v0

    move/from16 v17, v6

    move/from16 v19, v12

    :goto_1d8
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_1dc
    move/from16 v17, v6

    move/from16 v19, v12

    if-eqz v11, :cond_1fa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1fa
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x0

    :try_start_201
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_212
    .catchall {:try_start_201 .. :try_end_212} :catchall_21c

    move v0, v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move v6, v0

    :goto_218
    move/from16 v5, v18

    goto/16 :goto_24

    :catchall_21c
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_221
    move/from16 v18, v5

    move/from16 v17, v6

    move/from16 v19, v12

    :goto_227
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    const-string v12, "Package"

    if-eqz v6, :cond_254

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    :cond_254
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2f2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->size()I

    move-result v16

    const-string v3, " AndroidManifest.xml \'key-set\' "

    if-nez v16, :cond_29e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_25c

    :cond_29e
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_25c

    :cond_2c6
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v2, v15, v3}, Landroid/content/pm/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Landroid/content/pm/parsing/ParsingPackage;

    move-object/from16 v3, v20

    goto :goto_2d0

    :cond_2ec
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto/16 :goto_25c

    :cond_2f2
    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_308

    invoke-interface {v2, v8}, Landroid/content/pm/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static parseLibrary(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_1f
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_27

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static parseMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/os/Bundle;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p3, :cond_e

    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    :cond_e
    nop

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    const-string v1, "<meta-data> requires an android:name attribute"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_c5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_24
    const/4 v3, 0x2

    :try_start_25
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_36

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_36

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b3

    :cond_36
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_bb

    iget v5, v3, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_53

    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    :goto_4f
    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_53
    iget v5, v3, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_62

    iget v5, v3, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_5e

    move v1, v4

    :cond_5e
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b3

    :cond_62
    iget v1, v3, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_74

    iget v1, v3, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v1, v4, :cond_74

    iget v1, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b3

    :cond_74
    iget v1, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_81

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_b3

    :cond_81
    const-string v1, "PackageParsing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b3
    invoke-interface {p4, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b7
    .catchall {:try_start_25 .. :try_end_b7} :catchall_c5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_bb
    :try_start_bb
    const-string v1, "<meta-data> requires an android:value or android:resource attribute"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_c5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_c5
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    nop

    invoke-static {p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PackageLite;

    iget-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    if-eqz v2, :cond_36

    iget-boolean v2, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v2, :cond_36

    const/16 v2, -0x7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_36
    new-instance v2, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v2, v1, p3}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    nop

    :try_start_3c
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Landroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_56} :catch_70
    .catchall {:try_start_3c .. :try_end_56} :catchall_6e

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :cond_5a
    :try_start_5a
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/ParsingPackage;

    iget-boolean v5, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-interface {v4, v5}, Landroid/content/pm/parsing/ParsingPackage;->setUse32BitAbi(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6a} :catch_70
    .catchall {:try_start_5a .. :try_end_6a} :catchall_6e

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :catchall_6e
    move-exception v3

    goto :goto_8c

    :catch_70
    move-exception v3

    const/16 v4, -0x66

    :try_start_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_88
    .catchall {:try_start_73 .. :try_end_88} :catchall_6e

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :goto_8c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_26
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_29
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    if-nez v2, :cond_1c

    const-string v1, "<overlay> does not specify a target package"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_a6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_1c
    if-ltz v4, :cond_9c

    const/16 v5, 0x270f

    if-le v4, v5, :cond_23

    goto :goto_9c

    :cond_23
    const/4 v5, 0x5

    :try_start_24
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": overlay ignored due to required system property: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageParsing"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_69
    .catchall {:try_start_24 .. :try_end_69} :catchall_a6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_6d
    :try_start_6d
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->setOverlay(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/content/pm/parsing/ParsingPackage;->setOverlayPriority(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/pm/parsing/ParsingPackage;->setOverlayTargetName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/pm/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x4

    invoke-static {v3, v7, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/ParsingPackage;->setOverlayIsStatic(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_98
    .catchall {:try_start_6d .. :try_end_98} :catchall_a6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_9c
    :goto_9c
    :try_start_9c
    const-string v1, "<overlay> priority must be between 0 and 9999"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_a6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_a6
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parsePermission(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Landroid/content/pm/parsing/component/ParsedPermissionUtils;->parsePermission(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Landroid/content/pm/parsing/component/ParsedPermissionUtils;->parsePermissionGroup(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Landroid/content/pm/parsing/component/ParsedPermissionUtils;->parsePermissionTree(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    nop

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_16
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_6
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    invoke-static {v2, v2, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/4 v2, 0x1

    :cond_14
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setProfileableByShell(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseQueries(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    :goto_c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_1c0

    const/4 v0, 0x3

    if-ne v13, v0, :cond_1d

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v12, :cond_1c0

    :cond_1d
    const/4 v0, 0x2

    if-eq v13, v0, :cond_21

    goto :goto_c

    :cond_21
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Landroid/content/pm/parsing/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_47
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countActions()I

    move-result v5

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countDataSchemes()I

    move-result v6

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countDataTypes()I

    move-result v7

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getHosts()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-nez v6, :cond_6e

    if-nez v7, :cond_6e

    if-nez v5, :cond_6e

    const-string v14, "intent tags must contain either an action or data."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_6e
    if-le v5, v14, :cond_77

    const-string v14, "intent tag may have at most one action."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_77
    if-le v7, v14, :cond_80

    const-string v14, "intent tag may have at most one data type."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_80
    if-le v6, v14, :cond_89

    const-string v14, "intent tag may have at most one data scheme."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_89
    if-le v15, v14, :cond_92

    const-string v14, "intent tag may have at most one data host."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    :cond_92
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object/from16 v17, v16

    const/16 v16, 0x0

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->countCategories()I

    move-result v14

    move-object/from16 v18, v0

    move/from16 v0, v16

    :goto_a3
    if-ge v0, v14, :cond_b9

    move-object/from16 v16, v2

    invoke-virtual {v1, v0}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    goto :goto_a3

    :cond_b9
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    const/4 v0, 0x1

    if-ne v15, v0, :cond_ca

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getHosts()[Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    aget-object v4, v2, v14

    goto :goto_cb

    :cond_ca
    const/4 v14, 0x0

    :goto_cb
    const-string v2, "/*"

    if-ne v6, v0, :cond_eb

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    move/from16 v17, v6

    invoke-virtual {v1, v14}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getDataScheme(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_ef

    :cond_eb
    move/from16 v17, v6

    move-object/from16 v0, v16

    :goto_ef
    const/4 v6, 0x1

    if-ne v7, v6, :cond_130

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    const-string v6, "/"

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :cond_10f
    if-nez v0, :cond_12d

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "content"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v6, "*"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_134

    :cond_12d
    move-object/from16 v16, v0

    goto :goto_134

    :cond_130
    move-object/from16 v16, v0

    move-object/from16 v14, v19

    :goto_134
    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    if-ne v5, v2, :cond_142

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_142
    invoke-interface {v9, v3}, Landroid/content/pm/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Landroid/content/pm/parsing/ParsingPackage;

    goto/16 :goto_c

    :cond_147
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16c

    const-string v2, "Package name is missing from package tag."

    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_16c
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Landroid/content/pm/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_1be

    :cond_174
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_188
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19e

    const/16 v2, -0x6c

    const-string v3, "Authority missing from provider tag."

    invoke-interface {v8, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_19a
    .catchall {:try_start_188 .. :try_end_19a} :catchall_1b9

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_19e
    :try_start_19e
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a5
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Landroid/content/pm/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_1b2
    .catchall {:try_start_19e .. :try_end_1b2} :catchall_1b9

    goto :goto_1a5

    :cond_1b3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    goto/16 :goto_c

    :catchall_1b9
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_1be
    :goto_1be
    goto/16 :goto_c

    :cond_1c0
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_3b

    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_1a

    :cond_3b
    invoke-interface {p2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackage;

    nop

    goto :goto_44

    :cond_40
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/ParsingPackage;->setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_48

    :goto_44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4d

    :catchall_48
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    :cond_4d
    :goto_4d
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Landroid/content/pm/parsing/ParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v2, -0x6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_4b
    nop

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, p2}, Landroid/content/pm/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackage;->setSharedUserLabel(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Landroid/content/pm/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    const/16 v2, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_24
    :try_start_24
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p4, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_87

    :try_start_2a
    new-instance v6, Landroid/content/res/Resources;

    iget-object v3, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v6, p4, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v2

    move v8, p5

    move v9, p3

    invoke-direct/range {v3 .. v9}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_6e
    .catchall {:try_start_2a .. :try_end_6e} :catchall_7b

    if-eqz v2, :cond_73

    :try_start_70
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_73
    return-object v4

    :cond_74
    nop

    if-eqz v2, :cond_7a

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7a} :catch_87

    :cond_7a
    return-object v3

    :catchall_7b
    move-exception v3

    if-eqz v2, :cond_86

    :try_start_7e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception v4

    :try_start_83
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    throw v3
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_87} :catch_87

    :catch_87
    move-exception v2

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object v0, p4

    invoke-static {p4, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_9
    :goto_9
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_50

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v3, v5, :cond_9

    const/4 v3, 0x2

    if-eq v4, v3, :cond_1d

    goto :goto_9

    :cond_1d
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "application"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz v1, :cond_38

    const-string v5, "PackageParsing"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    goto :goto_44

    :cond_38
    const/4 v1, 0x1

    invoke-direct/range {p0 .. p6}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    goto :goto_44

    :cond_3e
    const-string v5, "<manifest>"

    invoke-static {v5, p2, p4, p1}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    :cond_4f
    goto :goto_9

    :cond_50
    if-nez v1, :cond_66

    const-wide/32 v5, 0x8fcab42

    const-string v3, "<manifest> does not contain an <application>"

    invoke-interface {p1, v3, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_66
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move/from16 v11, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v0, 0x7

    const/4 v9, 0x1

    :try_start_14
    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-interface {v14, v11, v0}, Landroid/content/pm/parsing/ParsingPackage;->setSplitHasCode(IZ)Landroid/content/pm/parsing/ParsingPackage;

    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1c2

    if-eqz v0, :cond_48

    :try_start_23
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_48

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_43

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_43
    move-exception v0

    move-object v4, v10

    move-object v2, v14

    goto/16 :goto_1c5

    :cond_48
    :goto_48
    :try_start_48
    invoke-interface {v14, v11, v0}, Landroid/content/pm/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_1c2

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_53
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v8, v1

    if-eq v1, v9, :cond_1ba

    const/4 v1, 0x3

    if-ne v8, v1, :cond_69

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_64

    goto :goto_69

    :cond_64
    move v3, v8

    move-object v4, v10

    move-object v2, v14

    goto/16 :goto_1bd

    :cond_69
    :goto_69
    const/4 v2, 0x2

    if-eq v8, v2, :cond_6d

    goto :goto_53

    :cond_6d
    const/16 v16, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    sparse-switch v4, :sswitch_data_1ca

    :cond_7e
    goto :goto_b3

    :sswitch_7f
    const-string/jumbo v4, "service"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v3, v2

    goto :goto_b3

    :sswitch_8a
    const-string v4, "activity-alias"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v3, v5

    goto :goto_b3

    :sswitch_94
    const-string/jumbo v4, "receiver"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v3, v9

    goto :goto_b3

    :sswitch_9f
    const-string/jumbo v4, "provider"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    move v3, v1

    goto :goto_b3

    :sswitch_aa
    const-string v4, "activity"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v3, 0x0

    :goto_b3
    if-eqz v3, :cond_15e

    if-eq v3, v9, :cond_157

    if-eq v3, v2, :cond_12a

    if-eq v3, v1, :cond_fa

    if-eq v3, v5, :cond_d7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v18, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v6, v1

    move v3, v8

    move v1, v9

    move-object v4, v10

    move-object v2, v14

    move-object/from16 v5, v16

    goto/16 :goto_193

    :cond_d7
    move-object/from16 v18, v6

    sget-boolean v1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    invoke-static {v14, v13, v12, v1, v15}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseActivityAlias(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-interface {v14, v2}, Landroid/content/pm/parsing/ParsingPackage;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    move-object/from16 v16, v2

    :cond_f0
    move-object v2, v1

    move-object v6, v2

    move v3, v8

    move v1, v9

    move-object v4, v10

    move-object v2, v14

    move-object/from16 v5, v16

    goto/16 :goto_193

    :cond_fa
    move-object/from16 v18, v6

    iget-object v1, v7, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v2, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    move v3, v8

    move-object v8, v1

    move v1, v9

    move-object/from16 v9, p2

    move-object v4, v10

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move v13, v2

    move-object v2, v14

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Landroid/content/pm/parsing/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_125

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-interface {v2, v6}, Landroid/content/pm/parsing/ParsingPackage;->addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)Landroid/content/pm/parsing/ParsingPackage;

    move-object/from16 v16, v6

    :cond_125
    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_193

    :cond_12a
    move-object/from16 v18, v6

    move v3, v8

    move v1, v9

    move-object v4, v10

    move-object v2, v14

    iget-object v8, v7, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v13, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Landroid/content/pm/parsing/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_153

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedService;

    invoke-interface {v2, v6}, Landroid/content/pm/parsing/ParsingPackage;->addService(Landroid/content/pm/parsing/component/ParsedService;)Landroid/content/pm/parsing/ParsingPackage;

    move-object/from16 v16, v6

    :cond_153
    move-object v6, v5

    move-object/from16 v5, v16

    goto :goto_193

    :cond_157
    move-object/from16 v18, v6

    move v3, v8

    move v1, v9

    move-object v4, v10

    move-object v2, v14

    goto :goto_166

    :cond_15e
    move-object/from16 v18, v6

    move v3, v8

    move v1, v9

    move-object v4, v10

    move-object v2, v14

    const/16 v17, 0x1

    :goto_166
    iget-object v8, v7, Landroid/content/pm/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v13, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Landroid/content/pm/parsing/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_190

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    if-eqz v17, :cond_18a

    invoke-interface {v2, v6}, Landroid/content/pm/parsing/ParsingPackage;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_18d

    :cond_18a
    invoke-interface {v2, v6}, Landroid/content/pm/parsing/ParsingPackage;->addReceiver(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;

    :goto_18d
    move-object v8, v6

    move-object/from16 v16, v8

    :cond_190
    move-object v6, v5

    move-object/from16 v5, v16

    :goto_193
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_19e

    invoke-interface {v15, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :cond_19e
    if-eqz v5, :cond_1af

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1af

    invoke-interface/range {p2 .. p2}, Landroid/content/pm/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p6

    invoke-virtual {v5, v8}, Landroid/content/pm/parsing/component/ParsedMainComponent;->setSplitName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;

    :cond_1af
    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move/from16 v11, p6

    move v9, v1

    move-object v14, v2

    move-object v10, v4

    goto/16 :goto_53

    :cond_1ba
    move v3, v8

    move-object v4, v10

    move-object v2, v14

    :goto_1bd
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :catchall_1c2
    move-exception v0

    move-object v4, v10

    move-object v2, v14

    :goto_1c5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :sswitch_data_1ca
    .sparse-switch
        -0x62b40cf1 -> :sswitch_aa
        -0x3adbfa0f -> :sswitch_9f
        -0x30341611 -> :sswitch_94
        0x2f1ad612 -> :sswitch_8a
        0x7643c6b5 -> :sswitch_7f
    .end sparse-switch
.end method

.method private parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_70

    :cond_a
    goto :goto_36

    :sswitch_b
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_37

    :sswitch_16
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_37

    :sswitch_21
    const-string v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_37

    :sswitch_2b
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_37

    :goto_36
    const/4 v0, -0x1

    :goto_37
    if-eqz v0, :cond_56

    if-eq v0, v3, :cond_51

    if-eq v0, v2, :cond_4c

    if-eq v0, v1, :cond_46

    const-string v0, "<application>"

    invoke-static {v0, p3, p5, p1}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_46
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_4c
    invoke-static {p1, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_51
    invoke-static {p1, p3, p4, p5}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_56
    nop

    invoke-interface {p3}, Landroid/content/pm/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p3, p4, p5, v0, p1}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseMetaData(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {p3, v1}, Landroid/content/pm/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_6e
    return-object v0

    nop

    :sswitch_data_70
    .sparse-switch
        -0x50de9846 -> :sswitch_2b
        -0x4284098e -> :sswitch_21
        0x88b87d -> :sswitch_16
        0x751e7745 -> :sswitch_b
    .end sparse-switch
.end method

.method private static parseStaticLibrary(Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eqz v2, :cond_6d

    if-gez v3, :cond_1b

    goto :goto_6d

    :cond_1b
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    const/16 v4, -0x6b

    const-string/jumbo v5, "sharedUserId not allowed in static shared library"

    invoke-interface {p3, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_8e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple static-shared libs for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_8e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_51
    :try_start_51
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/ParsingPackage;->setStaticSharedLibName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v5

    invoke-static {v1, v3}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Landroid/content/pm/parsing/ParsingPackage;->setStaticSharedLibVersion(J)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/pm/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_8e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :cond_6d
    :goto_6d
    :try_start_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad static-library declaration name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_8a
    .catchall {:try_start_6d .. :try_end_8a} :catchall_8e

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :catchall_8e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, v1, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v2, v4, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    nop

    const/4 v5, 0x1

    invoke-static {v5, v5, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/content/pm/parsing/ParsingPackage;->setSupportsSmallScreens(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v7, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/content/pm/parsing/ParsingPackage;->setSupportsNormalScreens(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v5, v7, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/content/pm/parsing/ParsingPackage;->setSupportsLargeScreens(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v5, v7, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/content/pm/parsing/ParsingPackage;->setSupportsExtraLargeScreens(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v5, v7, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/content/pm/parsing/ParsingPackage;->setResizeable(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v6

    invoke-static {v5, v2, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/content/pm/parsing/ParsingPackage;->setAnyDensity(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/pm/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/content/pm/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/content/pm/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_61

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_61
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_25

    iget v5, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v5

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_25
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_38
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_43

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Landroid/content/pm/parsing/ParsingPackage;

    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_17

    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_17
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v2, :cond_21

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/pm/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_2e

    :cond_21
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    :cond_2e
    :goto_2e
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_22

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_22

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_22

    iget v5, v4, Landroid/util/TypedValue;->data:I

    move v3, v5

    :cond_22
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_b0

    if-nez v2, :cond_3a

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_3a
    if-eqz v3, :cond_45

    :try_start_3c
    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_b0

    if-ge v3, v7, :cond_45

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_45
    if-eqz v5, :cond_58

    :try_start_47
    iget-object v7, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    if-eqz v7, :cond_58

    iget-object v7, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v7, v5}, Landroid/content/pm/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_b0

    if-nez v7, :cond_58

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_58
    if-eqz v1, :cond_6b

    :try_start_5a
    iget-object v7, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    if-eqz v7, :cond_6b

    iget-object v7, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_b0

    if-eqz v7, :cond_6b

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_6b
    :try_start_6b
    invoke-interface {p2}, Landroid/content/pm/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7d

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Landroid/content/pm/parsing/ParsingPackage;->addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    goto :goto_ab

    :cond_7d
    const-string v7, "PackageParsing"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_6b .. :try_end_ab} :catchall_b0

    :goto_ab
    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :catchall_b0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_12d

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_17
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    const/4 v10, 0x3

    if-eqz v9, :cond_31

    iget v11, v9, Landroid/util/TypedValue;->type:I

    if-ne v11, v10, :cond_2e

    iget-object v11, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v11, :cond_2e

    iget-object v11, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    goto :goto_31

    :cond_2e
    iget v11, v9, Landroid/util/TypedValue;->data:I

    move v0, v11

    :cond_31
    :goto_31
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    move-object v9, v12

    if-eqz v9, :cond_50

    iget v12, v9, Landroid/util/TypedValue;->type:I

    if-ne v12, v10, :cond_4c

    iget-object v12, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v12, :cond_4c

    iget-object v12, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    if-nez v6, :cond_52

    move-object v6, v8

    goto :goto_52

    :cond_4c
    iget v12, v9, Landroid/util/TypedValue;->data:I

    move v7, v12

    goto :goto_52

    :cond_50
    move v7, v0

    move-object v8, v6

    :cond_52
    :goto_52
    sget-object v12, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v7, v8, v12, v1}, Landroid/content/pm/parsing/ParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_66

    invoke-interface {v1, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10
    :try_end_62
    .catchall {:try_start_17 .. :try_end_62} :catchall_128

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10

    :cond_66
    :try_start_66
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    invoke-interface/range {p1 .. p1}, Landroid/content/pm/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14, v13}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_87

    invoke-interface {v1, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10
    :try_end_83
    .catchall {:try_start_66 .. :try_end_83} :catchall_128

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10

    :cond_87
    :try_start_87
    sget v15, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v10, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v0, v6, v15, v10, v1}, Landroid/content/pm/parsing/ParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_9d

    invoke-interface {v1, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_128

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v11

    :cond_9d
    :try_start_9d
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v2, v15}, Landroid/content/pm/parsing/ParsingPackage;->setMinSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v11

    invoke-interface {v11, v13}, Landroid/content/pm/parsing/ParsingPackage;->setTargetSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    const/16 v16, 0x0

    :goto_b4
    move/from16 v17, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v18, v0

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_11c

    move/from16 v0, v18

    const/4 v6, 0x3

    if-ne v0, v6, :cond_d0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v11, :cond_cd

    goto :goto_d0

    :cond_cd
    move/from16 v18, v0

    goto :goto_11c

    :cond_d0
    :goto_d0
    const/4 v6, 0x3

    if-eq v0, v6, :cond_115

    const/4 v6, 0x4

    if-ne v0, v6, :cond_d7

    goto :goto_117

    :cond_d7
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v18, v0

    const-string v0, "extension-sdk"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    if-nez v16, :cond_ef

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v16, v0

    goto :goto_f1

    :cond_ef
    move-object/from16 v0, v16

    :goto_f1
    invoke-static {v1, v3, v4, v0}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v16, v0

    goto :goto_102

    :cond_fb
    const-string v0, "<uses-sdk>"

    invoke-static {v0, v2, v4, v1}, Landroid/content/pm/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v6, v0

    :goto_102
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_10c
    .catchall {:try_start_9d .. :try_end_10c} :catchall_128

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_110
    move/from16 v0, v17

    move-object/from16 v6, v19

    goto :goto_b4

    :cond_115
    move/from16 v18, v0

    :goto_117
    move/from16 v0, v17

    move-object/from16 v6, v19

    goto :goto_b4

    :cond_11c
    :goto_11c
    :try_start_11c
    invoke-static/range {v16 .. v16}, Landroid/content/pm/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/ParsingPackage;
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_128

    nop

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_12d

    :catchall_128
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_12d
    :goto_12d
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_95

    if-ltz v3, :cond_95

    if-nez v5, :cond_1e

    goto/16 :goto_95

    :cond_1e
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Depending on multiple versions of static library "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_be

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    sget-object v7, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v9, 0x1b

    if-lt v8, v9, :cond_76

    invoke-static {p0, p2, p3}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_6f

    invoke-interface {p0, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_be

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_6f
    :try_start_6f
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v7, v9

    :cond_76
    array-length v8, v7

    add-int/2addr v8, v4

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v1

    array-length v9, v7

    invoke-static {v7, v1, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    int-to-long v9, v3

    invoke-interface {v1, v9, v10}, Landroid/content/pm/parsing/ParsingPackage;->addUsesStaticLibraryVersion(J)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/content/pm/parsing/ParsingPackage;->addUsesStaticLibraryCertDigests([Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_91
    .catchall {:try_start_6f .. :try_end_91} :catchall_be

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_95
    :goto_95
    :try_start_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad uses-static-library declaration name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " certDigest"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_ba
    .catchall {:try_start_95 .. :try_end_ba} :catchall_be

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_be
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static resId(ILandroid/content/res/TypedArray;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method private static setMaxAspectRatio(Landroid/content/pm/parsing/ParsingPackage;)V
    .registers 10

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_d

    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v2

    cmpl-float v1, v2, v1

    const-string v3, "android.max_aspect"

    if-eqz v1, :cond_1a

    move v0, v2

    goto :goto_2a

    :cond_1a
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v4, :cond_5d

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getMaxAspectRatio()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_42

    goto :goto_5a

    :cond_42
    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_51

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    goto :goto_52

    :cond_51
    move v7, v0

    :goto_52
    nop

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getResizeMode()I

    move-result v8

    invoke-virtual {v6, v8, v7}, Landroid/content/pm/parsing/component/ParsedActivity;->setMaxAspectRatio(IF)Landroid/content/pm/parsing/component/ParsedActivity;

    :goto_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_5d
    return-void
.end method

.method private setMinAspectRatio(Landroid/content/pm/parsing/ParsingPackage;)V
    .registers 9

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_b

    move v1, v0

    goto :goto_27

    :cond_b
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_14

    goto :goto_26

    :cond_14
    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageUtils;->mCallback:Landroid/content/pm/parsing/ParsingPackageUtils$Callback;

    if-eqz v1, :cond_23

    const-string v2, "android.hardware.type.watch"

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_26

    :cond_23
    const v1, 0x3faa9fbe    # 1.333f

    :goto_26
    nop

    :goto_27
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_48

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getMinAspectRatio()Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_45

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getResizeMode()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/parsing/component/ParsedActivity;->setMinAspectRatio(IF)Landroid/content/pm/parsing/component/ParsedActivity;

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_48
    return-void
.end method

.method private setSupportsSizeChanges(Landroid/content/pm/parsing/ParsingPackage;)V
    .registers 12

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.supports_size_changes"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v6, :cond_3c

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedActivity;

    if-nez v4, :cond_36

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_39

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_39

    :cond_36
    invoke-virtual {v8, v2}, Landroid/content/pm/parsing/component/ParsedActivity;->setSupportsSizeChanges(Z)Landroid/content/pm/parsing/component/ParsedActivity;

    :cond_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_3c
    return-void
.end method

.method private static string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_53

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_15

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1f

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_35

    :cond_1f
    if-nez v2, :cond_2e

    const/16 v5, 0x30

    if-lt v4, v5, :cond_29

    const/16 v5, 0x39

    if-le v4, v5, :cond_35

    :cond_29
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_2e

    goto :goto_35

    :cond_2e
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_38

    const/4 v1, 0x1

    const/4 v2, 0x1

    nop

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    :cond_53
    if-eqz p3, :cond_62

    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "Invalid filename"

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :cond_62
    if-nez v1, :cond_6e

    if-nez p2, :cond_67

    goto :goto_6e

    :cond_67
    const-string v3, "must have at least one \'.\' separator"

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto :goto_73

    :cond_6e
    :goto_6e
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    :goto_73
    return-object v3
.end method


# virtual methods
.method public parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method
