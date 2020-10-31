.class final Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;
.super Landroid/net/lowpan/LowpanProperty;
.source "LowpanProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LowpanStandardProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/lowpan/LowpanProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/lowpan/LowpanProperty;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
