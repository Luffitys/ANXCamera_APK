.class public abstract Lorg/greenrobot/greendao/AbstractDaoMaster;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final daoConfigMap:Ljava/util/Map;

.field protected final db:Lorg/greenrobot/greendao/database/Database;

.field protected final schemaVersion:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iput p2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->schemaVersion:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    return-object p0
.end method

.method public getSchemaVersion()I
    .locals 0

    iget p0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->schemaVersion:I

    return p0
.end method

.method public abstract newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
.end method

.method public abstract newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
.end method

.method protected registerDaoClass(Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    iget-object p0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
