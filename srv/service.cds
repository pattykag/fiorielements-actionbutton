using { test } from '../db/schema';


service MyService {
    entity Users as projection on test.Users;
}