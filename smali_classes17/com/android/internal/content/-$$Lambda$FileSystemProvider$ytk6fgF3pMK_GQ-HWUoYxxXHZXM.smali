.class public final synthetic Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ytk6fgF3pMK_GQ-HWUoYxxXHZXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ytk6fgF3pMK_GQ-HWUoYxxXHZXM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ytk6fgF3pMK_GQ-HWUoYxxXHZXM;

    invoke-direct {v0}, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ytk6fgF3pMK_GQ-HWUoYxxXHZXM;-><init>()V

    sput-object v0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ytk6fgF3pMK_GQ-HWUoYxxXHZXM;->INSTANCE:Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ytk6fgF3pMK_GQ-HWUoYxxXHZXM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/internal/content/FileSystemProvider;->lambda$queryChildDocumentsShowAll$0(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
