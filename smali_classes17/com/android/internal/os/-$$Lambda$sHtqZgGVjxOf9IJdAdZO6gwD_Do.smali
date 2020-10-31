.class public final synthetic Lcom/android/internal/os/-$$Lambda$sHtqZgGVjxOf9IJdAdZO6gwD_Do;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/os/-$$Lambda$sHtqZgGVjxOf9IJdAdZO6gwD_Do;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$sHtqZgGVjxOf9IJdAdZO6gwD_Do;

    invoke-direct {v0}, Lcom/android/internal/os/-$$Lambda$sHtqZgGVjxOf9IJdAdZO6gwD_Do;-><init>()V

    sput-object v0, Lcom/android/internal/os/-$$Lambda$sHtqZgGVjxOf9IJdAdZO6gwD_Do;->INSTANCE:Lcom/android/internal/os/-$$Lambda$sHtqZgGVjxOf9IJdAdZO6gwD_Do;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    return p1
.end method
