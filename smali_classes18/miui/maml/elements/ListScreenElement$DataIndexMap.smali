.class Lmiui/maml/elements/ListScreenElement$DataIndexMap;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataIndexMap"
.end annotation


# instance fields
.field public mData:[Ljava/lang/Object;

.field public mElementIndex:I

.field public mNeedRebind:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    iput-object p1, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    iput p2, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    if-eqz v0, :cond_c

    array-length v1, v0

    if-le v1, p1, :cond_c

    aput-object p2, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    :cond_c
    return-void
.end method
