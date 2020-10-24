.class final Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final key:J

.field next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(JLjava/lang/Object;Lorg/greenrobot/greendao/internal/LongHashMap$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    iput-object p3, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p4, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    return-void
.end method
