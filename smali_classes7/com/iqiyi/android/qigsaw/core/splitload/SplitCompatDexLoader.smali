.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitCompatDexLoader"

.field private static sPatchDexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V23;->access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V19;->access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V14;->access$200(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->sPatchDexCount:I

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "don\'t support under SDK version 14!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method static unLoad(Ljava/lang/ClassLoader;)V
    .locals 2

    sget v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->sPatchDexCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->sPatchDexCount:I

    const-string v1, "dexElements"

    invoke-static {p0, v1, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "don\'t support under SDK version 14!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
