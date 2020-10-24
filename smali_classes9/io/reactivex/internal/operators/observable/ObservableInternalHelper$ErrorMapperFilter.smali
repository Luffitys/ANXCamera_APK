.class final enum Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Lio/reactivex/functions/Predicate;


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;->INSTANCE:Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    aput-object v0, v1, v2

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;->$VALUES:[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;
    .locals 1

    const-class v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;
    .locals 1

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;->$VALUES:[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/Notification;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;->apply(Lio/reactivex/Notification;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lio/reactivex/Notification;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lio/reactivex/Notification;->getError()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public test(Lio/reactivex/Notification;)Z
    .locals 0

    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnError()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/reactivex/Notification;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ErrorMapperFilter;->test(Lio/reactivex/Notification;)Z

    move-result p0

    return p0
.end method
