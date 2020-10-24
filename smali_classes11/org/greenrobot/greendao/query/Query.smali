.class public Lorg/greenrobot/greendao/query/Query;
.super Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
.source ""


# instance fields
.field private final queryData:Lorg/greenrobot/greendao/query/Query$QueryData;


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/Query$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/Query;->queryData:Lorg/greenrobot/greendao/query/Query$QueryData;

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/Query$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/Query$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/greenrobot/greendao/query/Query;-><init>(Lorg/greenrobot/greendao/query/Query$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;
    .locals 7

    new-instance v6, Lorg/greenrobot/greendao/query/Query$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/Query$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/query/Query;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public forCurrentThread()Lorg/greenrobot/greendao/query/Query;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/query/Query;->queryData:Lorg/greenrobot/greendao/query/Query$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public list()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;
    .locals 0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->listIteratorAutoClose()Lorg/greenrobot/greendao/query/CloseableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listLazy()Lorg/greenrobot/greendao/query/LazyList;
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lorg/greenrobot/greendao/query/LazyList;

    iget-object p0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lorg/greenrobot/greendao/query/LazyList;-><init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lorg/greenrobot/greendao/query/LazyList;

    iget-object p0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/greenrobot/greendao/query/LazyList;-><init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public bridge synthetic setLimit(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setLimit(I)V

    return-void
.end method

.method public bridge synthetic setOffset(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setOffset(I)V

    return-void
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/Query;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/Query;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/Query;

    return-object p0
.end method

.method public unique()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object p0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    const-string v0, "No entity found for query"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
