.class Lmiui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:D

.field mVersion:I


# direct methods
.method public constructor <init>(DI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D

    iput p3, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public setValue(D)V
    .registers 4

    iput-wide p1, p0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D

    iget v0, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method
