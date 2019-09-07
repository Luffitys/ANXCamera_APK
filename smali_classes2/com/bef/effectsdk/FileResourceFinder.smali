.class public final Lcom/bef/effectsdk/FileResourceFinder;
.super Ljava/lang/Object;
.source "FileResourceFinder.java"

# interfaces
.implements Lcom/bef/effectsdk/ResourceFinder;


# instance fields
.field private final mDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bef/effectsdk/FileResourceFinder;->mDir:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreateFileResourceFinder(JLjava/lang/String;)J
.end method


# virtual methods
.method public createNativeResourceFinder(J)J
    .locals 0

    iget-object p0, p0, Lcom/bef/effectsdk/FileResourceFinder;->mDir:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/bef/effectsdk/FileResourceFinder;->nativeCreateFileResourceFinder(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public release(J)V
    .locals 0

    return-void
.end method
