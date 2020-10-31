.class public final Landroid/view/inputmethod/InputConnectionInspector;
.super Ljava/lang/Object;
.source "InputConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnectionInspector$MissingMethodFlags;
    }
.end annotation


# static fields
.field private static final sMissingMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p0, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v1, :cond_9

    return v0

    :cond_9
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Landroid/view/inputmethod/InputConnectionWrapper;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    move-result v0

    return v0

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_10

    const-string v2, "getSelectedText(int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_10
    and-int/lit8 v2, p0, 0x2

    const-string v3, ","

    if-eqz v2, :cond_22

    if-nez v1, :cond_1b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string/jumbo v2, "setComposingRegion(int, int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_22
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_31

    if-nez v1, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    const-string v2, "commitCorrection(CorrectionInfo)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_31
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_41

    if-nez v1, :cond_3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    const-string/jumbo v2, "requestCursorUpdate(int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_41
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_50

    if-nez v1, :cond_4a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    const-string v2, "deleteSurroundingTextInCodePoints(int, int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_50
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_5e

    if-nez v1, :cond_59

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    const-string v2, "getHandler()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_6c

    if-nez v1, :cond_67

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    const-string v2, "closeConnection()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_7a

    if-nez v1, :cond_75

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_75
    const-string v2, "commitContent(InputContentInfo, Bundle)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .registers 5

    sget-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_f
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_18

    or-int/lit8 v1, v1, 0x1

    :cond_18
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_20

    or-int/lit8 v1, v1, 0x2

    :cond_20
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_28

    or-int/lit8 v1, v1, 0x4

    :cond_28
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_30

    or-int/lit8 v1, v1, 0x8

    :cond_30
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_38

    or-int/lit8 v1, v1, 0x10

    :cond_38
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_40

    or-int/lit8 v1, v1, 0x20

    :cond_40
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_48

    or-int/lit8 v1, v1, 0x40

    :cond_48
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitContent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_50

    or-int/lit16 v1, v1, 0x80

    :cond_50
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "closeConnection"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_14

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_14
    move-exception v1

    return v0
.end method

.method private static hasCommitContent(Ljava/lang/Class;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "commitContent"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/inputmethod/InputContentInfo;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_20} :catch_22

    xor-int/2addr v0, v4

    return v0

    :catch_22
    move-exception v1

    return v0
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "commitCorrection"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/CorrectionInfo;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_18

    xor-int/2addr v0, v2

    return v0

    :catch_18
    move-exception v1

    return v0
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "deleteSurroundingTextInCodePoints"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_1d

    xor-int/2addr v0, v4

    return v0

    :catch_1d
    move-exception v1

    return v0
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "getHandler"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_14

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_14
    move-exception v1

    return v0
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_18

    xor-int/2addr v0, v2

    return v0

    :catch_18
    move-exception v1

    return v0
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "requestCursorUpdates"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_19

    xor-int/2addr v0, v2

    return v0

    :catch_19
    move-exception v1

    return v0
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1c} :catch_1e

    xor-int/2addr v0, v4

    return v0

    :catch_1e
    move-exception v1

    return v0
.end method
