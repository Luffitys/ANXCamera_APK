.class public Landroid/util/HashedStringCache$HashResult;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HashedStringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashResult"
.end annotation


# instance fields
.field public hashedString:Ljava/lang/String;

.field public saltGeneration:I

.field final synthetic this$0:Landroid/util/HashedStringCache;


# direct methods
.method public constructor <init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Landroid/util/HashedStringCache$HashResult;->this$0:Landroid/util/HashedStringCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    iput p3, p0, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    return-void
.end method
