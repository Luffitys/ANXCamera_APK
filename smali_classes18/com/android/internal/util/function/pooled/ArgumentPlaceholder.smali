.class public final Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
.super Ljava/lang/Object;
.source "ArgumentPlaceholder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    invoke-direct {v0}, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;-><init>()V

    sput-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "_"

    return-object v0
.end method
